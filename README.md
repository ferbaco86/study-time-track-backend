# README

# Study-Time-Track-App: Backend

> Study Time Track App Backend is a back-end API, which provides data to the [Study-Time-Track-Frontend](https://github.com/ferbaco86/study-time-track-frontend) which is an app that allows the user to register the time he/she spends on a given task. 


## Main Features

* It allows the users to register and log in using a username and password.

* Authorization managed with JWT token so the user session persists. 

* The user can create a study session and add study subjects and the time she/he spent studying it to that particular session.

* The user can check each session.

* The user can get the latest and longest sessions, and top 5 most studied subjects.   


## Built With

- Ruby v3.0.0
- Ruby on Rails v6.1.3.1
- PostgreSQL
- JWT 
- Heroku for deployment
- Tests with RSpec, FactoryBot, Faker, Database Cleaner, and Shoulda Matchers

## Live Demo

[Study-Time-Track-App: Live version](https://fbc-study-track.herokuapp.com/)
Hosted on a Heroku free account, it may take a while to load. 

## Getting Started

To get a local copy up and running follow these simple steps.

Clone the repo with:

```
https://github.com/ferbaco86/study-time-track-backend.git
```

### Setup

Install gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

### Usage

Start server with: (localhost:3000)

```
    rails server
```


### API Endpoints 

### POST requests:

User Login:
```
/login
```

User creation:
```
/users
```

Session creation:
```
/sessions
```

Subject creation:
```
/subjects
```

### GET requests

Get the logged user:
```
/auto_login
```

Get the longest session (Session with the highest subjects accumulated time):
```
/longest/:id
```

Get the latest session:
```
/latest/:id
```

Get the top 5 most studied subjects(Subjects with the highest time values):
```
/top/:id
```

Get the specified user:
```
/users/:id
```

Get the specified session:
```
/sessions/:id
```


### Run tests

To run all tests use this command:

```
    bundle exec rspec
    
```
To run only model tests run this instead:

```
    bundle exec rspec spec/models

```

For requests tests only, execute this:

```
    bundle exec rspec spec/requests

```



## Authors

👤 **Fernando Bahamondes**

- Github: [@ferbaco86](https://github.com/ferbaco86)
- Twitter: [@ferbac0](https://twitter.com/ferbac0)
- Linkedin: [linkedin](https://www.linkedin.com/in/fernando-bahamondes-correa)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/ferbaco86/study-time-track-backend/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

[Test Driven Development of a RESTful JSON API With Rails by Uduak Essien](https://www.microverse.org/blog/test-driven-development-of-restful-json-api-with-rails)

## 📝 License

This project is [MIT](https://github.com/ferbaco86/study-time-track-backend/blob/development/LICENSE) licensed.
