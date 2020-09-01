
## Active Record
A webframe usually includes a way of getting your web app interacting with a database. This is known as <strong><u>ORMs,</u></strong>, _Object-Relational Mapping_

In Rails, the built-in ORM is <strong>ActiveRecord.</strong>

## So what is this ActiveRecords?
1. It is an archetectuiral design pattenr that <u>works with databases
.</u> In this pattern, every db table becomes a <strong>class</strong> and an instance of that class refers to a specific row within that class table.

2. It is a piece of software that interprets Ruby commands and changes them into SQL queries. It comes with Rails.

## CRUD commands in Active Records
[![Image from Gyazo](https://i.gyazo.com/7209fd71abd6fdd64c6467423ec658d6.png)](https://gyazo.com/7209fd71abd6fdd64c6467423ec658d6)

|<strong>Action</strong>	 |  <stronng>Command</strong>|
|---|---|
|CREATE	|User.create, User.new|
|READ|	User.first, User.all, User.find_by(name: 'Dave')|
|UPDATE|	user.update(name: 'Spike') (where 'user' has been defined)|
|DELETE|	user.destroy (where 'user' has been defined)|

<stronng>Create</stronng> can be used in a single step, you can create a user and add properties, `User.create`:
`User.create(name: "Hilda", eye_colour: "brown")`

## Steps 
1. Create a git repo and initiate git on your local machine

2. In the path you wish to store your project, type: <br>
`rails new [name of project]` <br>
To view your rails on your local machine, type in cmd line <br>

`$ rails s` / `rails server`

3. Test driving
- We need to create a controller that handles <strong>index,create, read, update, destroy </strong>actions for our posts and then <strong>direct our routes.rb</strong> file (config/routes) to the index action of that controller.

Create a controller called Posts in the terminal.
`$ rails g controller posts`

4. Navigate to the new posts_controller.rb and add a controllwer action. Let's start with index.
```
def index
end
```

4. Routes on rails are the standard RESTFUL routes. Rails allows a simply routing scenario by using <u>'resources. </u>.

In routes.rb, create a resources route for posts controller.<br>
`resources :posts`
Set index action in the PostController to be root route within routes.rb.<br>

`root 'posts#index`

5 Views - Rails would now want a view of this new index action. <u>Create</u> a new view called <u>index inside a posts folder</u>(app/views/post). Name your files within views as .html.erb (index.html.erb).
In views, add some basic HTML, e.g <h1>Welcome</h1>.
<br><br>
<strong>Run:</strong>$ rails s


### Database
6. Generate a <u>model</u> in terminal to store our posts (captions/image). <u>Create</u> a model with only a column for 'caption'. <br>

`rails g model Post caption:string`

As the migration file for the database have been created, we need to migrate those changes. Run the Rails db migrate cmd in terminal.<br>
`$ rake db:migrate`

7. <strong><u>New:</u></strong>: create a new empty action in post_controller.rb called 'new' , like index.
Again create a a views for this action. Create a rails form in here.
```
<%= form_with scope: :post, local: true do |form| %>
  <p>
    <%= form.label :title %><br>
    <%= form.text_field :title %>
  </p>
 
  <p>
    <%= form.label :text %><br>
    <%= form.text_area :text %>
  </p>
 
  <p>
    <%= form.submit %>
  </p>
<% end %>
```

In order for the form to be utilised, we need an instance variable from the correct action in controller.
```
def new
  @post = Post.new
end
```

#### The action 'create' could not be found
8. Create an empty method 'create' in post conntroller. We wannt create to work behind the scenes, saves data in our form to the database.
```
def create
  @post = Post.create(post_params)
end
```

post_params is used as an arguement in create methood but so that it isn't called outside of the class, we set it as private. In private we define what we wish to see
```
private

def post_params
  params.require(:post).permit(:caption)
end
```

redirect_to posts_path in our create
```
def create
  @post = Post.create(post_params)
  redirect_to posts_path
end
```