# README

# What did you do?

1. Created a new rails app
  * rails new todo-api --skip-spring --database=postgresql --skip-test-unit
  * git init
  * add rspec-rails to Gemfile
  * remove turbolinks from Gemfile
  * bundle
  * search project for `turbolinks` and remove
  * rake db:create
  * rails s
  * make sure all is kosher at [http://localhost:3000/](http://localhost:3000/)
1. Turn the bare repo into an API
  * strip out unnecessary gems
    * `coffee-rails`
    * `jbuilder`
    * `sdoc`
1. Add test for `/todos`
1. Todos migration, route, model, controller (rendering json)
