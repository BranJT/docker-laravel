# docker-compose-laravel
Nginx, postgres, php, composer, npm and artisan stack.

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