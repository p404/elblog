require 'rails_helper'
require 'generators/elblog/install_generator'
require "generator_spec"
  
RSpec.describe Elblog::Generators::InstallGenerator, :type => :generator do
  destination File.expand_path("../../../tmp", __FILE__)
  arguments %w(guorpre)

  before :context do
    run_generator
  end

  after :context do
    rm(destination_root + '/config/initializers/elblog.rb')
    rm_r(destination_root + '/config/locales/bootsy')
    rm_r(destination_root + '/config/locales/elblog')
  end

  describe "Simulate run_generator install" do
    it 'should mount Engine Elblog into routes' do
      path_root = destination_root + '/config/routes.rb'
      content = ::File.read(path_root)
      expect(content.scan("mount Elblog::Engine => 'guorpre'").count).to eq 1
      expect(content.scan("mount Elblog::Engine").count).to eq 1
    end

    specify 'should create el blog initializer' do
      expect(destination_root).to have_structure{
        directory 'config' do
          directory 'initializers' do
            file 'elblog.rb' do
              contains "Elblog.elblog_path = 'guorpre'"
              contains "Elblog.elblog_name = ''"
              contains "Elblog.elblog_password = ''"
              contains "Elblog.elblog_discuss_shortname = ''"
            end
          end
        end
      }
    end

    specify 'should create locales (I18n) file of bootsy and elblog' do
      expect(destination_root).to have_structure {
        directory 'config' do
          directory 'locales' do
  	    	  directory 'bootsy' do
              file 'en.yml'	
  	    	  end
            directory 'elblog' do
              file 'en.yml'
            end
          end
        end
      }
    end

    it 'should config locales in application.rb' do
      content = ::File.read(destination_root + '/config/application.rb')
      config_statement = "config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]"
      expect(content.include? config_statement)
      expect(content.scan(config_statement).count).to eq 1
    end
  end
  
end