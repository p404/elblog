require "elblog/engine"

module Elblog
  mattr_accessor :elblog_path
  def self.elblog_path
    @@elblog_path
  end
end
