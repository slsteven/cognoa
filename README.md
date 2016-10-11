# Ruby on Rails Hacker News Project - Cognoa

## Basic features:
  * anyone can create an account using a username and password (bonus points for preventing bots)
  * users can post at most 3 urls per hour
  * anyone (not just registered users) can "upvote" a link, but only once per session
  * users can comment on posts

  * Ruby version
    * ruby 2.2.4

  * Rails version
    * Rails 4.1.8

  * Deployment instructions

    install all the dependencies (we need to have Postgres installed locally already):
    $ bundle install

    command to see what generators are available to us:
    $ rails g

    install footnotes to help with debugging (optional)
    $ rails g rails_footnotes:install

    create and migrate database
    $ rake db:create
    $ rake db:migrate

    compile the files in the asset folder by running...
    $ rake assets:precompile

    start server
    $ rails s

    Go to http://localhost:3000/
