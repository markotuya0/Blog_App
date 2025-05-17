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
  - [Quick Start with Docker](#quick-start-with-docker)
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

- **Docker** and **Docker Compose** (the only software you need to install)
- No need to install Ruby, Rails, or PostgreSQL locally

## Getting Started

### Quick Start with Docker

1. **Clone the repository**

   ```bash
   git clone https://github.com/markotuya0/Simple_Blog_App.git
   cd Simple_Blog_App
   ```

2. **Build and start the application**

   ```bash
   # Start the application
   docker-compose up --build
   ```

3. **Set up the database (in a new terminal window)**

   ```bash
   docker-compose exec web rails db:create db:migrate db:seed
   ```

That's it! Your application is now running at http://localhost:3001

### Troubleshooting Docker Issues

If you encounter Docker-related errors:

1. **Port conflicts**: 
   - The app is configured to use port 3001 to avoid conflicts
   - If port 3001 is also in use, edit docker-compose.yml and change the port mapping

2. **Docker Compose version issues**:
   - Try using `docker compose` (without hyphen) for newer Docker versions
   - The docker-compose.yml file uses version "2.0" which is widely supported

3. **Permission issues**:
   - On Linux/macOS, you might need to use `sudo`
   - Ensure your user is in the docker group: `sudo usermod -aG docker $USER`

### Configuration

The application is pre-configured in the docker-compose.yml file with these default settings:

- Database name: blog_development
- Database user: postgres
- Database password: admin
- Application port: 3001 (external) mapping to 3000 (internal)

To modify these settings, edit the `docker-compose.yml` file.

### Database Setup

The database is automatically created when you run the setup command:

```bash
docker-compose exec web rails db:create db:migrate

# Optional: Add sample data
docker-compose exec web rails db:seed
```

## Usage

Once the application is running, visit:

- **Local Development**: http://localhost:3001

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