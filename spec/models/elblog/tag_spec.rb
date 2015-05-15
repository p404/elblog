require 'rails_helper'

module Elblog
  RSpec.describe Tag, type: :model do
    context 'Validation and RelationShips of Model' do
      it 'should validate category is present' do
        should validate_presence_of(:category)
      end
      it 'should validate taggable is present' do
        should validate_presence_of(:taggable_type)
      end
      it 'should belongs_to category and taggable' do
        should belong_to(:category)
        should belong_to(:taggable)
      end
      it 'should validate uniqueness category scoped taggable_type and taggable_id ' do
        elblog_tag = FactoryGirl.create :elblog_tag
        category = elblog_tag.category
        error_expected = 'Validation failed: Category has already been taken'
        expect {
          FactoryGirl.create :elblog_tag, category: category
        }.to raise_error(ActiveRecord::RecordInvalid, error_expected)
      end
    end
  end
end
