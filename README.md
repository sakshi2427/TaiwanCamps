# TAIWAN CAMPS

![3](https://user-images.githubusercontent.com/87069685/199387450-399fe090-4d41-41e4-a469-b9bdf571a4d0.png)

A campsite directory web application with Ruby on Rails.

## Table of contents
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)

## Technologies

Back: 
* Ruby 3.1.2
* [Rails 7.0.4](https://guides.rubyonrails.org/7_0_release_notes.html)

Gem: 
* [Devise](https://github.com/heartcombo/devise)
* [I18n](https://guides.rubyonrails.org/i18n.html)
* [stimulus-rails](https://github.com/hotwired/stimulus-rails)
* [turbo-rails](https://github.com/hotwired/turbo-rails)
* [Administrate](https://github.com/thoughtbot/administrate)

- Front: [Bootstrap 5 (customized)](https://getbootstrap.com/docs/5.2/customize/overview/)
- Test : TDD - to be confirmed
- Database: [PostgreSQL](https://www.postgresql.org/docs/)
- Hosting: [Railway](https://docs.railway.app/)
	
## Setup

Clone the repository
```
git git@github.com:PaulineTW/taiwan-camps.git
cd taiwan-camps
```

First, install the gems required by the application:
```
$ bundle install
```

Initialize the database
```
$ bin/setup
```

Start rails server
```
$ bin/dev
```

You can find your app now by pointing your browser to http://localhost:3000. 

Run Test
```
$ bin/rails test:system
$ bin/rails test:all
```

## Features

To be coming...
