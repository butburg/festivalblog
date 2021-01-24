# Readme

Festivalblog is a web-based platform to inform about upcoming events. It will contain several features.

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
* Header, Footer, Subpages, Logo
* Confirmation option (Like) for each event
* Events

Medium Features:
* Registration
* Authentication
* Password

Hard Features:

* Two-level login (Authorize + manage resources):
* Login for admins who provide articles and information
* Login for visitors who can confirm events and then receive notifications on update (message)
* Message to everyone who have accepted additionally by mail at an Update
* Create a calendar entry when the corresponding event is confirmed

## Systemrequirements
* Ruby
    * Version: 2.7.0
* Rails
    * Version: 6.0.3.4
* Others:
    * yarn v 1.22.5
    * imagemagick v 6.q16

### Tipps
* Ruby was installed via rbenv
* For a clean and nice! tutorial to install Ruby and Rails see https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-18-04
* How to get yarn for your system: https://classic.yarnpkg.com/en/docs/install/#alternatives-stable


* #### You need to follow the steps below to run the app:
  get imagemagick so upload function works
  ```
  apt install imagemagick libmagickcore-dev
  ```
  install yarn
  ```bash
  curl -o- -L https://yarnpkg.com/install.sh | bash
  ```
  get nvm:
  ```bash
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash
  ```
  get node.js with nvm:
  ```bash
  nvm nodejs
  ```
  get sqlite3 (maybe you need to run: apt-get install libsqlite3-dev):
  ```bash
  gem install sqlite3 -v '1.4.2'
  ```
  install gems:
  ```bash
  bundle install
  ```
  go to the directory of the app and check, if it runs without failure!
  ```bash
    rails s
    ```
  update packages with yarn
  ```bash
  yarn
  ```

## License
All source code is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.
