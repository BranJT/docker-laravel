# docker-compose-laravel
Nginx, postgres, php, composer, npm and artisan stack.
Repo based on https://github.com/aschmelyun/docker-compose-laravel
## Usage

To get started, make sure you have Docker installed

Next, navigate in your terminal to the root of the project and spin up all te containers
`docker-compose up -d --build`.

- **nginx** - `:8080`
- **postgres** - `:5432`
- **php** - `:9000`

Three additional containers are included that handle Composer, NPM, and Artisan commands *without* having to have these platforms installed on your local computer. Use the following command examples from your project root, modifying them to fit your particular use case.

- `docker-compose run --rm composer install`
- `docker-compose run --rm npm install`
- `docker-compose run --rm artisan migrate` 

Composer, npm and artisan are the names of the containers

## SRC folder
Create a src folder in the root of your project and inside the src folder place all your laravel project.
For the laravel .env file, you need to change DB_HOST from localhost or 127.0.0.1 to pgsql which is the name of the psql docker container, then proceed to change normally all the rest of the env variables.

## DB postgres init script
More information here https://gist.github.com/onjin/2dd3cc52ef79069de1faa2dfd456c945