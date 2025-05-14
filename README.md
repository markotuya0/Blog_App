# Simple Blog App

A minimal blog application built with Ruby on Rails. This project includes basic functionality for creating and managing blog posts. It's containerized using Docker and uses PostgreSQL for the database. Designed to be easily deployed to AWS.

---

## Requirements

- Ruby 3.1.x  
- Rails 7.x  
- PostgreSQL  
- Docker & Docker Compose  
- AWS (EC2, ECS, or similar for deployment)

---

## Setup

1. Clone the repository:

   git clone https://github.com/markotuya0/Blog_App.git
   cd simple-blog-app
Copy the .env example if needed:

 .env.example .env
Build and run the app with Docker:

docker-compose up --build
Set up the database:

docker-compose exec web rails db:create db:migrate
Usage
App runs at http://localhost:3000

# Install dependencies
bundle install

# Set up the database
rails db:create
rails db:migrate
🧪 Running the Test Suite

# Run all tests
rails test
(Or rspec if you're using RSpec instead of the default test framework.)

📂 Features
Create, edit, and delete blog posts

List all posts on the homepage

Clean, simple UI (customize to your needs)

Basic validations for posts

Pagination support (if added)

🛠 Configuration
All configurations are handled via standard Rails conventions

You may set environment variables in .env (if using dotenv)

⚙️ Services Used
This project can be extended with:

Background Jobs: Sidekiq or Active Job

Caching: Redis (optional)

Search: pg_search, Elasticsearch, or similar (optional)

You can create, edit, and delete posts

Basic validations are in place

Running Tests
If you're using Minitest:

docker-compose exec web rails test
If you're using RSpec:


docker-compose exec web rspec
Deployment
To deploy on AWS (e.g. EC2 or ECS):

Set up environment variables

Build Docker image

Push to your container registry

Deploy via ECS or manually to EC2 with Docker Compose

You can also configure CI/CD using GitHub Actions or similar tools.

Notes
PostgreSQL is used as the default database

Docker ensures environment consistency

Environment variables can be managed using .env or AWS Secrets Manager
