Sinatra Boilerplate
===================

A standard Sinatra boilerplate, with Compass and Sass.

This is a [Heroku](http://heroku.com/) ready [Sinatra](http://sinatrarb.com/) app put together by [Charlie Gleason](http://charliegleason.com/) (with help from [John Barton](http://github.com/joho).

1.  ## Getting things up and running

    To get the boilerplate running, pull down a copy locally.

        # Make a new directory and jump into it
        > mkdir ~/myapp && cd ~/myapp

        # Grab a copy of Sinatra Boilerplate
        > git clone git@github.com:superhighfives/sinatra-boilerplate.git .

        # Install the appropriate Ruby gems (shorthand for bundle install)
        > bundle

        # Start the server
        > foreman start

    The app will now be accessible at [http://0.0.0.0:5000](http://0.0.0.0:5000)

2.  ## Getting it onto Heroku

    To deploy to [Heroku](http://heroku.com/), first up, install the [Heroku Toolbelt](http://toolbelt.heroku.com/).

    This will give you access to the following tools:

    -   [Heroku](http://github.com/heroku/heroku) (for Heroku on the command line)
    -   [Git](http://code.google.com/p/git-osx-installer) (for version control)
    -   [Foreman](http://github.com/ddollar/foreman) (for running Sinatra locally)

3.  ## Sign up for Heroku and login

    Once you have an account for [Heroku](http://heroku.com/) run the following in your terminal.

        # Once you've installed the Heroku toolbelt, log in
        > heroku login

    This will ask for your [Heroku](http://heroku.com/) credentials.

        # Enter your Heroku credentials.
        > Email: adam@example.com
        > Password: ********

    If you already have an SSH key set up on your local machine, you'll likely see the following. [Heroku](http://heroku.com/) will help you set up a key, which makes deployment much quicker, meaning you don't have to enter your password every time you deploy. Win.

        # If you haven't set up keys, Heroku will help you out. For example:
        # Could not find an existing public key.
        > Would you like to generate one? [Yn]
        # Generating new SSH public key.
        # Uploading ssh public key /Users/you/.ssh/id_rsa.pub

    If you get a **publickey error (access denied)** when you try and push the site to [Heroku](http://heroku.com/), add your public key manually.

        # If for some reason this doesn't occur, you can add them manually
        > heroku keys:add

    Next up, we set up the app and deploy it.

4.  ## Deploy the app

    Set up your [Heroku](http://heroku.com/) stack and deploy the app to it.

        > heroku create
        # Creating temp... done, stack is cedar
        # http://temp.herokuapp.com/ | git@heroku.com:temp.git
        # Git remote heroku added

        # Deploy the app
        > git push heroku master

        # Celebrate!
        > heroku open

    Joy!

5.  ## Name it something fancy!

    You can rename the app from the randomly generated http://random-subdomain.heroku.com/ to something more meaningful using:

        # Rename your subdomain
        > heroku rename newname