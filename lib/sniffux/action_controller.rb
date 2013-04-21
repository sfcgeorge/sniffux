class Sniffux
  module ActionController # :nodoc: all
    def self.included(base)
      base.send :helper_method, :browser
    end

    private
    def sniffux
      @sniffux ||= Sniffux.new(
        #:accept_language => request.headers["Accept-Language"],
        #:ua => request.headers["User-Agent"]
        
        request.user_agent
      )
    end
  end
end

ActionController::Base.send :include, Browser::ActionController
