
a. Create a ruby gemfile
```
$> bundle init
```

b. Include the following in gemfile and in your command line, type `bundle install`
```
# in Gemfile
source 'https://rubygems.org'

gem 'sinatra'
gem 'rspec'
gem 'capybara'
```

### Set up RSpec
```
# in commmandline

$ rspec --init
```

### Set up Sinatra
Set up a basic sinatra app with `app.rb` in the root directory and in this file, include
```
# in app.rb

require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello World'
  end

end
```

Configure the `rackup` command to run the application in `app.rb` via `config.ru`
```
# in config.ru

require_relative "./app"

run BookmarkManager

```

The directory layout
.
├── Gemfile
├── Gemfile.lock
├── app.rb
├── config.ru
└── spec
    ├── features
    └── spec_helper.rb


### Getting Capybara to talk to Sinatra
Start from spec_helper.rb
 1. Set environement to "test" <br>
`ENV['RACK_ENV'] = 'test'`
<br>
2. Mention content in app.rb file.<br>
`require File.join(File.dirname(__FILE__), '..', 'app.rb')`
<br>
3. Include all necessary testing gems <br>

```
require 'capybara'
require 'capybara/rspec'
require 'rspec'
```

4. Instruct Capybara to talk to the directory(ie. BookmarkManager)<br>
`Capybara.app = BookmarkManager`

Can now add feature annd unit tests in the spec/features directory and run rspec.




## Useful Links
[MMakers Setup](https://github.com/makersacademy/course/blob/master/pills/ruby_web_project_setup_list.md)