module Elblog
  # Category
  # Model Category
  class Category < ActiveRecord::Base
    validates :name, presence: true, uniqueness: true
  end
end
