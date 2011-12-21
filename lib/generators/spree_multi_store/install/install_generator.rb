require 'rails/generators'
require 'highline/import'

module SpreeMultiStore
  class InstallGenerator < Rails::Generators::Base
    argument :after_bundle_only, :type => :string, :default => "false"

    class_option :auto_accept, :type => :boolean, :default => false, :aliases => '-A', :desc => "Answer yes to all prompts"
    class_option :skip_install_data, :type => :boolean, :default => false
    class_option :lib_name, :default => 'spree_multi_store'
    attr :lib_name
    attr :auto_accept
    attr :skip_install_data
    attr :test_app

    def load_default_data
      # Loads default data out of default dir
      rake( 'spree_multi_store:load' )
    end
  end
end
