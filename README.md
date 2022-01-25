# Odin Facebook
This is a web app replicating some of the basic functionality of facebook. Part of [The Odin Project](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails/lessons/rails-final-project)

## Requirements
Replicate the core functionality of facebook, including:
* Friend requests/lists
* Text/image posts
* Likes
* Commenting
* Timeline
* Etc.

## What I used
Rails, Devise, Guard, Bulma

## What I learned
### Introduction
This is the final project in the Rails section of The Odin Project. This project is meant to combine everything I've learned so far about Ruby and Rails. Upon reading the project requirements, I knew that this was going to be a very tough challenge and that I'd have to put all of my newfound knowledge to the test. However, I knew that I could break this project down into bite-sized, manageable steps and tackle this behemoth in pieces.

### Testing
This is the first project to explicitly demand that I write tests. I had written tests for my vanilla Ruby projects before, but I had not explored tests in Rails yet. I did not know what tests looked like in Rails, or how to test things such as views, routes, etc. Models, and to a lesser extent, controllers, seemed straightforward enough, but I did not really even know where to start with testing the app components specific to Rails.

I read the the official Rails guide chapter on testing, and learned that minitest is the default testing framework in Rails. I had never used minitest before; the lesson on testing in the Ruby course used RSpec. I also was able to see some examples of integration testing, feature testing, system testing, etc.

Through some focused Google searches, I was eventually able to learn how to create a Rails project without minitest enabled by default. I did so, then read the documentation for `rspec-rails` to install that particular gem. Another gem that I was advised to use was `Guard`, which would allow me to run tests in the background so I could constantly monitor my tests. Installing `Guard` created a `Guardfile`, which I then filled out using the `guard-rspec` plugin.

### User model
Using the `Devise` gem made generating the `User` model easy. By default, `Devise` can create a user with an email and password, validations/authentications, etc. However, I did know that I also wanted to add a "display name" attribute for users to use their real names as opposed to just their emails. I simply added a line for a `display_name` attribute to the migration and also added a validation to the `UsersController` to make sure that the display name is present. I also wrote some tests to make sure that a `User` is invalid if any of those attributes are left blank/missing.
