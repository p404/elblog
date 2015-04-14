module Elblog
  class Post < ActiveRecord::Base
    validates :title, presence: true, uniqueness: true
    validates :content, presence: true
    validates :author, presence: true
    
    include Bootsy::Container
  end
end
