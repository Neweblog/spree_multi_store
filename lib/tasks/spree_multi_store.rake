namespace :spree_multi_store do
  desc "Loads default data"
  task :load do
    default_path = File.join(File.dirname(__FILE__), '..', '..', 'db', 'default')
    Rake::Task['db:load_dir'].reenable
    Rake::Task["db:load_dir"].invoke( default_path )
  end
end
