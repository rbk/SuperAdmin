## Rails 4, Ruby 2 Starter app. ##

Work in progress!

## Setup ##

1. `git clone git@github.com:richardbejamin/superadmin.git`
2. `cd superadmin`
3. `bundle install`
4. `rake db:migrate`


Run `rake create_admin` to create the inital admin user.

> username: admin@localhost.com

> password: admin123

OR

Just create a user from the rails console:

> `User.create email: "your@email.com", password: "yourpass", password_confirmation: "yourpass", group: "superadmin"`

## Rename App ##

Run this command from the folder you cloned this repository in, to rename your application. Replace `<app_name>`
with the name of your app.

`find . -type f -print0 | xargs -0 sed -i 's/SuperAdmin/<app_name>/g'`

## Notes ##

- Be sure to change the SuperAdmin::Application.config.secret_key_base in config/initializers/secret_token.rb