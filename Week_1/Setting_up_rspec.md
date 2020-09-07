1. Setup a new repo on github and clone it onto your local repo
2. On your command line, cd into this cloned repository.
3. Run `rspec --init` to create a spec_helper
4. Run `bundle init` to create a gennfile. Go into this file and add all the necessary gems you will need.
e.g paste this 
```
group :test do
  gem 'rspec'
  gem 'rubocop', '0.79.0'
  gem 'simplecov', require: false, group: :test
  gem 'simplecov-console', require: false, group: :test
end
```
5. Run `bundle` or `bundle install` (same thing will happen) to initiate the Gemfile.lock.
6. In your spec_helper, require 'simplecov' on line 1, for coverage.
```
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
```
Include
```
RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop?
    It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
```

7. Run rubocop in your terminal and clean up if needed.
