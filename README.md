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

I wrote a blog post that explains [how to use Sniffux](http://www.sfcgeorge.co.uk/posts/2013/04/20/enhancing-web-ux-consistency-sniffux).

Rails (the `sniffux` helper is automatically available):

    <div id="alert" class="cancel-<%=sniffux.cancel_side%>">

Other framework:

    sniffux = Sniffux.new(request.user_agent)
    if sniffux.cancel_left?
      'Cancel button is on the left!!1'
    else
      'Cancel button is on the anti-left xoxo'
    end

## Available Methods

**The Cancel button in dialogues**  
`cancel_side` Returns `String` `'left'` or `'right'`  
`cancel_left?` Returns `Boolean`  
`cancel_right?` Returns `Boolean`  
**The Ok button in dialogues**  
`ok_side` Returns `Sring` `'left'` or `'right'`  
`ok_left?` Returns `Boolean`  
`ok_right?` Returns `Boolean`  
**The close button in the window titlebar**  
`close_side` Returns `String` `'left'` or `'right'`  
`close_left?` Returns `Boolean`  
`close_right?` Returns `Boolean`  

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
