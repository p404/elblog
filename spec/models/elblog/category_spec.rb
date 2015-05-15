require 'rails_helper'

module Elblog
  RSpec.describe Category, type: :model do
    context 'Validations on model' do
      it 'should validate presence of name' do
        should validate_presence_of :name
      end

      it 'should validate uniquesness of name' do
        should validate_uniqueness_of :name
      end
    end
  end
end
