require "elblog/engine"

module Elblog
  mattr_accessor :elblog_path
  def self.elblog_path
    @@elblog_path
  end
  
  mattr_accessor :elblog_name
  def self.elblog_name
    @@elblog_name
  end
  
  mattr_accessor :elblog_password
  def self.elblog_password
    @@elblog_password
  end
  
  mattr_accessor :elblog_discuss_shortname
  def self.elblog_discuss_shortname
    @@elblog_discuss_shortname
  end
end
