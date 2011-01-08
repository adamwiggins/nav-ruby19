### Under Ruby 1.8.7

    $ bundle exec thin start
    >> Using rack adapter
    >> Thin web server (v1.2.7 codename No Hup)
    >> Maximum connections set to 1024
    >> Listening on 0.0.0.0:3000, CTRL+C to stop
    127.0.0.1 - - [07/Jan/2011 17:19:13] "GET / HTTP/1.1" 200 5 0.0024
    127.0.0.1 - - [07/Jan/2011 17:19:13] "GET /favicon.ico HTTP/1.1" 404 420 0.0006

    $ curl -I http://localhost:3000
    HTTP/1.1 200 OK

### Under Ruby 1.9.2

    $ bundle exec thin start
    >> Using rack adapter
    >> Thin web server (v1.2.7 codename No Hup)
    >> Maximum connections set to 1024
    >> Listening on 0.0.0.0:3000, CTRL+C to stop
    Failed to fetch the Heroku header: Timeout::Error - execution expired
    NoMethodError: undefined method `join' for #<Enumerator: ["hello"]:map>
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/heroku-nav-0.1.17/lib/heroku/nav.rb:19:in `call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/rack-1.2.1/lib/rack/showexceptions.rb:24:in `call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/rack-1.2.1/lib/rack/methodoverride.rb:24:in `call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/rack-1.2.1/lib/rack/commonlogger.rb:18:in `call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/sinatra-1.1.0/lib/sinatra/base.rb:1142:in `block in call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/sinatra-1.1.0/lib/sinatra/base.rb:1168:in `synchronize'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/sinatra-1.1.0/lib/sinatra/base.rb:1142:in `call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/connection.rb:76:in `block in pre_process'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/connection.rb:74:in `catch'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/connection.rb:74:in `pre_process'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/connection.rb:57:in `process'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/connection.rb:42:in `receive_data'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/eventmachine-0.12.10/lib/eventmachine.rb:256:in `run_machine'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/eventmachine-0.12.10/lib/eventmachine.rb:256:in `run'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/backends/base.rb:57:in `start'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/server.rb:156:in `start'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/controllers/controller.rb:80:in `start'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/runner.rb:177:in `run_command'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/runner.rb:143:in `run!'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/bin/thin:6:in `<top (required)>'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/bin/thin:19:in `load'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/bin/thin:19:in `<main>'
    127.0.0.1 - - [07/Jan/2011 17:18:06] "GET / HTTP/1.1" 500 64817 0.0126
    NoMethodError: undefined method `join' for #<Enumerator:0x000001019b4838>
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/heroku-nav-0.1.17/lib/heroku/nav.rb:19:in `call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/rack-1.2.1/lib/rack/showexceptions.rb:24:in `call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/rack-1.2.1/lib/rack/methodoverride.rb:24:in `call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/rack-1.2.1/lib/rack/commonlogger.rb:18:in `call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/sinatra-1.1.0/lib/sinatra/base.rb:1142:in `block in call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/sinatra-1.1.0/lib/sinatra/base.rb:1168:in `synchronize'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/sinatra-1.1.0/lib/sinatra/base.rb:1142:in `call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/connection.rb:76:in `block in pre_process'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/connection.rb:74:in `catch'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/connection.rb:74:in `pre_process'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/connection.rb:57:in `process'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/connection.rb:42:in `receive_data'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/eventmachine-0.12.10/lib/eventmachine.rb:256:in `run_machine'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/eventmachine-0.12.10/lib/eventmachine.rb:256:in `run'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/backends/base.rb:57:in `start'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/server.rb:156:in `start'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/controllers/controller.rb:80:in `start'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/runner.rb:177:in `run_command'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/runner.rb:143:in `run!'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/bin/thin:6:in `<top (required)>'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/bin/thin:19:in `load'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/bin/thin:19:in `<main>'
    127.0.0.1 - - [07/Jan/2011 17:18:06] "GET /__sinatra__/500.png HTTP/1.1" 500 64956 0.0317
    NoMethodError: undefined method `join' for #<Enumerator:0x00000102a141d8>
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/heroku-nav-0.1.17/lib/heroku/nav.rb:19:in `call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/rack-1.2.1/lib/rack/showexceptions.rb:24:in `call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/rack-1.2.1/lib/rack/methodoverride.rb:24:in `call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/rack-1.2.1/lib/rack/commonlogger.rb:18:in `call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/sinatra-1.1.0/lib/sinatra/base.rb:1142:in `block in call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/sinatra-1.1.0/lib/sinatra/base.rb:1168:in `synchronize'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/sinatra-1.1.0/lib/sinatra/base.rb:1142:in `call'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/connection.rb:76:in `block in pre_process'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/connection.rb:74:in `catch'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/connection.rb:74:in `pre_process'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/connection.rb:57:in `process'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/connection.rb:42:in `receive_data'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/eventmachine-0.12.10/lib/eventmachine.rb:256:in `run_machine'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/eventmachine-0.12.10/lib/eventmachine.rb:256:in `run'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/backends/base.rb:57:in `start'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/server.rb:156:in `start'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/controllers/controller.rb:80:in `start'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/runner.rb:177:in `run_command'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/lib/thin/runner.rb:143:in `run!'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/gems/thin-1.2.7/bin/thin:6:in `<top (required)>'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/bin/thin:19:in `load'
      /Users/adam/.rvm/gems/ruby-1.9.2-p0/bin/thin:19:in `<main>'
    127.0.0.1 - - [07/Jan/2011 17:18:06] "GET /favicon.ico HTTP/1.1" 500 64808 0.0118

    $ curl -I http://localhost:3000
    HTTP/1.1 500 Internal Server Error

