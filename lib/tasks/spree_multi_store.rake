namespace :spree_multi_store do
  desc "Loads default data"
  task :load => :environment do
    role=Role.find_by_name('admin')
    role.position=1
    role.save
    role=Role.find_by_name('user')
    role.position=2
    role.save
    default_path = File.join(File.dirname(__FILE__), '..', '..', 'db', 'default')
    Rake::Task['db:load_dir'].reenable
    Rake::Task["db:load_dir"].invoke( default_path )
  end
end
