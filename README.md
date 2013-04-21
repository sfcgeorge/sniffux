# Sniffux

Use user-agent string to reason about UX expectations. E.g. Should the Cancel button in dialogues be on the left or the right? You may then use this information to serve your users a version of your site that matches their expectations and is consistent with the UX they are used to.

## Installation

Add this line to your application's Gemfile:

    gem 'sniffux'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sniffux

## Usage

Rails:

    <div id="alert" class="cancel-on-#{sniffux.cancel_side}">

Other framework:

    sniffux = Sniffux.new(request.user_agent)
    if sniffux.cancel_left?
      'Cancel button is on the left!!1'
    else
      'Cancel button is on the anti-left xoxo'
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
