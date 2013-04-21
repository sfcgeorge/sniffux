class Sniffux
  module ActionController # :nodoc: all
    def self.included(base)
      base.send :helper_method, :sniffux
    end

    private
    def sniffux
      @sniffux ||= Sniffux.new(
        request.user_agent
      )
    end
  end
end

ActionController::Base.send :include, Sniffux::ActionController
