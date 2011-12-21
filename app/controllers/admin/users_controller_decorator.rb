Admin::UsersController.class_eval do
  update.before :set_stores

  create.before :add_to_all_stores

  private
  def set_stores
    @user.store_ids = nil unless params[:user].key? :store_ids
  end

  def add_to_all_stores
  end
end
