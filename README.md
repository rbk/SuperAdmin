## Rails 4, Ruby 2 Starter app. ##

We all usually need some kind of basic login system, so I've layed the groundwork
here. This app uses the `has_secure_password` method. Beside the usual `current_user` helper method, I have added the a `super_admin` helper method.

I added Bootstrap 3 on a wim. It can be ripped out fairly easily.


## Setup ##


Run `rake create_admin` to create the inital admin user.

> username: admin

> password: admin

OR

Just create a user from the rails console:

> `User.create email: "your@email.com", password: "yourpass", password_confirmation: "yourpass", group: "superadmin"`

## Rename App ##

Run this command from the shell rename the app. Replace `<app_name>`
with the name of your app.

`find . -type f -print0 | xargs -0 sed -i 's/SuperAdmin/<app_name>/g'`

