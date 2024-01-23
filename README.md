

# Runway Example jekyll App

This is an example app demonstrating how to deploy a jekyll app
to [runway](https://runway.planetary-quantum.com/).

* clone this repo, and navigate into that directory
* `runway app create`
* `runway app deploy`
* `runway open`

You can then deploy changes by `git commit`ing them, and running `runway app
deploy` again.

This uses the version of `jekyll` from your `Gemfile` to build your site,
and `nginx` to serve it.

To deploy your existing Jekyll site:

* add the `Dockerfile` and `.dockerignore` from this repo into your Jekyll repository.
* adjust the `ruby` version in the `Dockerfile`, if necessary
* do `runway app create`/`runway app deploy`

(future versions of runway will be able to deploy Jekyll sites without an
explicit Dockerfile)

