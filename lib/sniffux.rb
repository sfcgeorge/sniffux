require "sniffux/version"
require "user_agent"

class Sniffux
  # Add Rails helper if ActionController::Base is available
  require "sniffux/action_controller" if defined?(ActionController::Base)
  
  def initialize(string)
    @user_agent = UserAgent.parse(string)
  end

  def cancel_left?
    # OS X, iOS, Linux, ChromeOS, WebOS, Haiku
    # Default because it's better:
    # http://uxmovement.com/buttons/why-ok-buttons-in-dialog-boxes-work-best-on-the-right/
    !cancel_right?
  end
  
  def cancel_right?
    # Windows, Android, Amiga (AROS)
    %w(Windows).include?(@user_agent.platform) ||
    %w(AROS).include?(@user_agent.os) ||
    !!(@user_agent.os =~ /Android/)
  end
  
  def cancel_side
    if cancel_right?
      'right'
    else
      'left'
    end
  end
  
  def ok_left?
    cancel_right?
  end
  
  def ok_right?
    cancel_left?
  end
  
  def ok_side
    if ok_right?
      'right'
    else
      'left'
    end
  end
  
  def close_left?
    # OS X, iOS, Linux (Ubuntu, can vary), Haiku, Amiga
    # Default because it matches having Cancel on the left
    !close_right?
  end
  
  def close_right?
    # Windows, ChromeOS
    %w(Windows).include?(@user_agent.platform) ||
    !!(@user_agent.os =~ /CrOS/)
  end
  
  def close_side
    if close_right?
      'right'
    else
      'left'
    end
  end
end
