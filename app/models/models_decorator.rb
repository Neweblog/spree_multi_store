Product.class_eval do
  has_and_belongs_to_many :stores
  scope :by_store, lambda {|store| joins(:stores).where("products_stores.store_id = ?", store)}
end

Order.class_eval do
  belongs_to :store
  scope :by_store, lambda { |store| where(:store_id => store.id) }
end

Taxonomy.class_eval do
  belongs_to :store
end

Tracker.class_eval do
  belongs_to :store

  def self.current(domain)
    trackers = Tracker.find(:all, :conditions => {:active => true, :environment => ENV['RAILS_ENV']})
    trackers.select { |t| t.store_id == Store.current(domain).try(:id) }.first
  end
end

User.class_eval do
  belongs_to :store
  attr_accessible :store_id
end

Role.class_eval do
  before_save :add_position
  def add_position
    self.position = Role.find(:all).size+1 unless self.position?
  end
end