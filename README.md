# Readme

## Festival-blog-web-application
This is a web-based platform to inform about upcoming events. It will contain following features.

## License

All source code is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```bash
./bin/setup
```

Finally, run the test suite to verify that everything is working correctly:

```bash
rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```bash
./bin/webpack-dev-server
```

Open new terminal tab:

```bash
rails server
```

## Feature-List

Easy Features:
* Header Footer Subpages
* Acceptance (Like) for each event possible.
* Events

Medium Features:
* Registration
* Authentication
* Password

Hard Features:

* Two-level login (Authorize + manage resources):
* Login for admins who provide articles and information
* Login for visitors who can confirm events and then receive notifications on update (message)
* Message to all who have accepted additionally by mail at Update
* Calendar entry automatically when the corresponding event is confirmed

## Systemrequirements
* Ruby
    * Version: 2.7.0
* Rails
    * Version: 6.0.3.4
* Others:
    * yarn v 1.22.5
    * SQLite v 3.31.1


     ruby installed via rbenv
     see https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-18-04
     for a clean and nice! tutorial to install Ruby and Rails!

   *
    how to get yarn for your system:
    https://classic.yarnpkg.com/en/docs/install/#alternatives-stable

   ##Setup manually you will need to follow for running the app

     install yarn           curl -o- -L https://yarnpkg.com/install.sh | bash
     get nvm:               curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash
     get node.js with nvm:  nvm nodejs
     get sqlite3:           gem install sqlite3 -v '1.4.2'
     (maybe you need first: apt-get install libsqlite3-dev )
     do                     bundle install
     in the directory of the app and check, if runs without failure!
     update packages yarn   yarn
**

...
