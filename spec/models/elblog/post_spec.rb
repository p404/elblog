require 'rails_helper'

module Elblog
  RSpec.describe Post, type: :model do
    context "Validation model" do
      it "should validate presence title" do
        should validate_presence_of :title
      end

      it "should validate presence content" do
        should validate_presence_of :content
      end

      it "should validate presence author" do
        should validate_presence_of :author
      end

      it "should validate title is uniqueness" do
        should validate_uniqueness_of :title
      end
    end

     context 'Relationship on Model' do 
        it 'should has many categories' do
          should have_many(:categories).through(:tags)
        end

        it 'should has many tags' do
          should have_many(:tags)
        end
      end
  end
end
