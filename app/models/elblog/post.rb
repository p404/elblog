module Elblog
  class Post < ActiveRecord::Base
    include Bootsy::Container
  end
end
