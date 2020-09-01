### Testing
Every Rails have 3 env: developemnt, test and production.

* The test is run under RAILS_ENV=test

When we typed out 'rails generate model` / `rails generate model article title:string body:text` earlier, it created <br>
```
create  app/models/article.rb 
create  test/models/article_test.rb
create  test/fixtures/articles.yml
```

In `test/models/[class_name_test.rb]` it looks like 

require 'test_helper'
 ```
class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
```

Any method defined within a class inherited from `Minitest::Test`(which is the superclass of `ActiveSupport::TestCase`) that begins with test_ is simply called a test.

Rails also adds a test method that takes a test name and a block. It generates a normal Minitest::Unit test with method names prefixed with test_. So you don't have to worry about naming the methods, and you can write something like:
```
test "the truth" do
  assert true
end

Equivalent to


def test_the_truth
  assert true
end
```

An <u>assertion</u> is a line of code that evaluates an object (or expression) for expected results. For example, an assertion can check:

- does this value = that value?
- is this object nil?
- does this line of code throw an exception?
- is the user's password greater than 5 characters?

### First failing test
Write test in <u>article_test.rb</u>(name of class in test/model/aticle_test.rb) test case.

```
test "should not save article without title" do
  article = Article.new
  assert_not article.save
end
```

### To read a line
Insert a coma, and in a string, type out what you wish to see on the line:
```
test "should not save article without title" do
  article = Article.new
  assert_not article.save, "Saved the article without a title"
end
```

### Passing the test
In app/models/article.rb
```
class Article < ApplicationRecord
  validates :title, presence: true
end
```
Now run the test again to pass.

### Debugging trick
`$ rails test -b test/models/article_test.rb`

When a test fails you are presented with the corresponding backtrace. By default Rails filters that backtrace and will only print lines relevant to your application.
