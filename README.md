# WordPress Dev Base

![Travis CI status](https://api.travis-ci.com/rustytanton/wordpress-dev-base.svg?branch=master "Travis CI status")

A base project for my typical [WordPress](https://wordpress.org/) theme/plugin development workflow:

1) Use [Docker](https://www.docker.com/) for local development / unit testing
2) When changes are merged to master, [Travis CI](https://travis-ci.com/) runs [PHPUnit](https://phpunit.de/) tests
3) (to-do) If unit tests pass, packaged themes/plugins are rsynced to an inexpensive shared host with a managed WordPress install such as [Bluehost](https://www.bluehost.com/)

# Setup

1) Clone this repo, rename, change git remote to point to your repository
2) Install `docker`, `docker-compose` and (if on a Mac) `docker-machine`
3) If on a Mac using `docker-machine` + [Virtualbox](https://www.virtualbox.org/), map NAT ports 8081 and 8082 on "default" virtual machine (or whatever you named it) to localhost
4) Run command `./bin/setup.sh`
5) Wait a couple of minutes, then visit http://localhost:8081/wp-admin

Edit `provision/wordpress/Dockerfile` to pre-install remote themes/plugin files.

# Local Development Helper Scripts

* `./bin/setup.sh` - (DESTRUCTIVE to existing Docker volumes) run whenever you're rebuilding the Docker WordPress image or want to wipe/reload the database
* `./bin/start.sh` - (non-destructive to Docker volumes) run if you've rebooted since the last time you worked in this project
* `./bin/shutdown.sh` - (non-destructive to Docker volumes) run if you're done working on this project for a while
* `./bin/dump-database.sh` - dumps the `wordpress` database to `./provision/mysql/dump.sql`, will be reloaded in this state next time you run `./bin/setup.sh`
* `./bin/wp.sh` - runs [WP-CLI](https://wp-cli.org/) against the running local install
* `./bin/composer.sh` - runs [Composer](https://getcomposer.org/) from src directory
* `./bin/phpunit.sh` - runs PHPUnit once
* `./bin/test-runner.sh` - runs PHPUnit continuously when changes are made to php files in src/themes or src/plugins

# VS Code support

Example config is built in to:

* Run PHPUnit using [Better PHPUnit](https://marketplace.visualstudio.com/items?itemName=calebporzio.better-phpunit)
