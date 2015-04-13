module Elblog
  module AuthHelper
    def http_login
      user = Elblog.elblog_name
      pw = Elblog.elblog_password
      request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user,pw)
    end  
  end
end