Escape!: The hotel search web app
=================================
What is this?
-------------
Welcome.
Escape! is a Rails 4.0.0 web application which consumes a JSON API in order to filter hotel results either by city or by the lowest-price rooms in the system. Whether you are planning a trip, just about to arrive in your destination city, or feeling spontaneous; this app is for you!

Set up:
--------

In order to run locally, be sure to have Ruby and Rails already installed.
Next:

* Clone this repo!
* cd into repo and run the following commands in terminal:

  * bundle install
  * rake db:create
  * rake db:migrate
  * rails s

You are all set to visit the project locally! Head on over to localhost:3000 in your browser!

To run spec tests the further steps of the following terminal commands are required:

  * rake db:test:prepare
  * rake spec

Enjoy!


