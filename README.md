# Sinatra Boilerplate

A starting point for small Sinatra apps on Heroku, with Haml, Sass, Compass and CoffeeScript. I put it together with help from [John Barton](https://github.com/joho).

Status: archived. Made in 2012, not maintained.

## Running it

```sh
bundle
foreman start   # serves the app on port 5000
```

To deploy to Heroku:

```sh
heroku create
git push heroku master
```

The `Gemfile` dates from 2012 and doesn't pin versions, so it will need some work to install on a current Ruby.

## How it works

- `app.rb` serves `views/index.haml` at `/`, and compiles Sass from `views/stylesheets/` and CoffeeScript from `views/javascripts/` on request.
- `config/compass.rb` configures Compass. The `Procfile` runs the app with `bundle exec ruby app.rb`.
