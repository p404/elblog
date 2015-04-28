require 'rails_helper'
require 'generators/elblog/views_generator'
require "generator_spec"
  
RSpec.describe Elblog::Generators::ViewsGenerator, :type => :generator do
  destination File.expand_path("../../../tmp", __FILE__)

  before :context do
    run_generator
  end

  after :context do
    rm_r(destination_root + '/app/views/elblog')
  end

  describe "Simulate run_generator elblog:views" do
    specify 'should copy all views elblog' do
      expect(destination_root).to have_structure {
        directory 'app' do
          directory 'views' do
  	    	  directory 'elblog' do
              directory 'posts' do
                file '_form.html.erb'
                file 'edit.html.erb'
                file 'index.html.erb'
                file 'new.html.erb'
                file 'show.html.erb'
              end
  	    	  end
          end
        end
      }
    end
  end
  
end