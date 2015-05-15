module Elblog
  # Tag
  # Model Tag
  class Tag < ActiveRecord::Base
    belongs_to :category
    belongs_to :taggable, polymorphic: true

    validates :category, presence: true
    validates :taggable_type, presence: true
    validates :taggable_id, presence: true

    validates :category_id, uniqueness: {
      scope: [
        :taggable_id,
        :taggable_type
      ]
    }
  end
end
