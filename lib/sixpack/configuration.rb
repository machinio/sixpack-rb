module Sixpack
  class Configuration
    attr_accessor :base_url, :user, :password, :open_timeout, :read_timeout

    def initialize
      @base_url = 'http://localhost:5000'
    end

    def to_hash
      config = {base_url: @base_url}
      config[:user] = @user unless @user.nil?
      config[:password] = @password unless @password.nil?
      config[:open_timeout] = @open_timeout unless @open_timeout.nil?
      config[:read_timeout] = @read_timeout unless @read_timeout.nil?
      config
    end
  end
end
