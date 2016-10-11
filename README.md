# Ruby on Rails Hacker News Project - Cognoa

### Basic features:
  * Anyone can create an account using a username and password (bonus points for preventing bots)
  * Users can post at most 3 urls per hour
  * Anyone (not just registered users) can "upvote" a link, but only once per session
  * Users can comment on posts



### Deployment instructions
    * Install all the dependencies (we need to have Postgres installed locally already):
    ```
    $ bundle install
    ```
    * Command to see what generators are available to us:
    ```
    $ rails g
    ```
    * Install footnotes to help with debugging (optional)
    ```
    $ rails g rails_footnotes:install
    ```
    * create and migrate database
    ```
    $ rake db:create
    $ rake db:migrate
    ```
    * Compile the files in the asset folder by running...
    ```
    $ rake assets:precompile
    ```
    * Start server
    ```
    $ rails s
    Go to http://localhost:3000/
    ```

* Ruby version
  * ruby 2.2.4

* Rails version
  * Rails 4.1.8
