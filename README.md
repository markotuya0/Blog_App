# Simple Blog App

A lightweight blog application built with Ruby on Rails, containerized with Docker, and powered by PostgreSQL.

![Ruby on Rails](https://img.shields.io/badge/Rails-7.x-red)
![Ruby](https://img.shields.io/badge/Ruby-3.1.x-red)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-latest-blue)
![Docker](https://img.shields.io/badge/Docker-ready-blue)

## 📋 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Requirements](#requirements)
- [Getting Started](#getting-started)
  - [Installation](#installation)
  - [Configuration](#configuration)
  - [Database Setup](#database-setup)
- [Usage](#usage)
- [Testing](#testing)
- [Deployment](#deployment)
- [Project Structure](#project-structure)
- [Extensions & Services](#extensions--services)
- [Contributing](#contributing)
- [License](#license)

## Overview

Simple Blog App is designed for quick deployment and easy customization. Perfect for learning Rails, prototyping ideas, or setting up a simple content publishing platform.

## Features

- **Post Management**: Create, read, update, and delete blog posts
- **Clean Interface**: Minimalist UI that's easy to navigate and customize
- **Responsive Design**: Works on desktop and mobile devices
- **Data Validation**: Basic validations for all post content
- **Pagination**: Support for handling large numbers of posts
- **Docker Integration**: Easy setup and consistent environments

## Requirements

- Ruby 3.1.x
- Rails 7.x
- PostgreSQL
- Docker & Docker Compose
- AWS (optional, for deployment)

## Getting Started

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/markotuya0/Simple_Blog_App.git
   cd Simple_Blog_App
   ```

2. **Set up environment variables**

   ```bash
   cp .env.example .env
   # Edit .env with your configuration
   ```

3. **Build and start the application**

   ```bash
   docker-compose up --build
   ```

### Configuration

The application can be configured through environment variables in the `.env` file:

- `DATABASE_URL`: PostgreSQL connection string
- `RAILS_ENV`: Environment (development, test, production)
- `PORT`: Application port (default: 3000)

### Database Setup

Initialize the database with:

```bash
docker-compose exec web rails db:create db:migrate

# Optional: Seed with sample data
docker-compose exec web rails db:seed
```

## Usage

Once the application is running, visit:

- **Local Development**: http://localhost:3000

From there you can:
- View all posts on the homepage
- Create new posts via the "New Post" button
- Edit or delete existing posts
- View individual posts in detail

## Testing

Run the test suite with:

```bash
# For Minitest
docker-compose exec web rails test

# For RSpec (if configured)
docker-compose exec web rspec
```

## Deployment

### AWS Deployment

1. **Prepare your application**
   - Ensure all environment variables are set for production
   - Update `config/deploy.yml` if needed

2. **Build and push Docker image**
   ```bash
   docker build -t simple-blog-app .
   # Push to your container registry
   ```

3. **Deploy options**
   - **EC2**: Use Docker Compose on an EC2 instance
   - **ECS**: Deploy as an ECS service with task definitions
   - **Elastic Beanstalk**: Use the Docker platform

4. **Set up database**
   - Use RDS for PostgreSQL in production
   - Run migrations after deployment

## Project Structure

```
app/
├── controllers/    # Application controllers
│   └── posts_controller.rb
├── models/         # Data models
│   └── post.rb
├── views/          # UI templates
│   └── posts/
└── assets/         # CSS, JavaScript, images
config/             # Application configuration
db/                 # Database migrations and schema
test/               # Test files
```

## Extensions & Services

The application can be extended with:

- **Background Jobs**: Sidekiq / Active Job
- **Caching**: Redis
- **Search**: pg_search or Elasticsearch
- **Authentication**: Devise or custom auth
- **File Storage**: Active Storage with AWS S3

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is available as open source under the terms of the [MIT License](LICENSE).