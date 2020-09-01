[![Image from Gyazo](https://i.gyazo.com/3e4a775a42de980d73c417fd75112ad5.png)](https://gyazo.com/3e4a775a42de980d73c417fd75112ad5)

### To add a username:
1. `$ rails g migrationn add_username_to_users`

2. in db/migrateion/2020...add_username..., include in method
```
def change

  add_column :accounts, :first_nname, :string, limit: 20
  add_column :accounts, :last_name, :string, limit: 20
  add_column :accounts, :username, :string, limit: 20
end
```

3. Run a rails db:migration

4. In views/devise/Registrations/new
[![Image from Gyazo](https://i.gyazo.com/8e011ca46bc3872e3d2795a6c0ea0175.png)](https://gyazo.com/8e011ca46bc3872e3d2795a6c0ea0175)

5. copy usrname field up to last_name field and paste in edit (views/devise/reg/edit). Remove autofocus from the email section

6. Conntroller/application
In github, go to devise, scroll down till you get to `class ApplicationConntroller < ActionController::Base` copy and paste 
[![Image from Gyazo](https://i.gyazo.com/5bf3e6ecbf70fd6874ac4a20a0c7dc8d.png)](https://gyazo.com/5bf3e6ecbf70fd6874ac4a20a0c7dc8d)

In keys, include first_name, last, and email to username.

In termianl: go into rails console `rails c` and manual set up a user
1. rails c
2. > User.first
3. > Account.first.update(username: "testuser")
4. > Account.first.update(first_name: "test", last_name: "user")

Refresh rails s. if error says unnfined method 'user', go back to models/post.rb and include "belongs_to :user", in models/user.rb, include
`has_many :posts`

5. > Post.first (user_id should = nil)
6. controller/posts_conntroller 
```
def create
  @post = Post.new(post_params)
  @post.user_id = current_user.id if user_signed_in?
```
7. In terminal `$ Post.first.destroy`

[![Image from Gyazo](https://i.gyazo.com/437cc458d26892cce15ea2dfcfbc59b9.png)](https://gyazo.com/437cc458d26892cce15ea2dfcfbc59b9)

`$ Post.first.destroy`



## Devise Login
Layout-