module Elblog
  # Post
  # Model Post
  class Post < ActiveRecord::Base
    has_many :tags, as: :taggable
    has_many :categories, through: :tags

    validates :title, presence: true, uniqueness: true
    validates :content, presence: true
    validates :author, presence: true

    include Bootsy::Container
  end
end
