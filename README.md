# 📝 Simple Blog App

A minimal blog application built with **Ruby on Rails**, containerized using **Docker**, and backed by **PostgreSQL**. Designed for quick deployment on **AWS (EC2, ECS, or similar)**. Ideal for learning, prototyping, or simple content publishing.

---

## 🚀 Features

- Create, edit, and delete blog posts  
- List all posts on the homepage  
- Clean and minimal UI (easy to customize)  
- Basic validations for posts  
- Pagination support *(optional/extendable)*

---

## 🧰 Requirements

- **Ruby** 3.1.x  
- **Rails** 7.x  
- **PostgreSQL**  
- **Docker & Docker Compose**  
- **AWS** (optional: EC2, ECS for deployment)

---

## 🛠 Setup

1. **Clone the repository**

   ```bash
   git clone https://github.com/markotuya0/Blog_App.git
   cd Blog_App

2. Copy the example .env file
   cp .env.example .env

3. Build and run the app with Docker
   docker-compose up --build

4. Set up the database
  docker-compose exec web rails db:create db:migrate

🧪 Running the Test Suite
If you're using Minitest:
docker-compose exec web rails test

If you're using RSpec:
docker-compose exec web rspec

🌐 Usage
Once the app is up, visit:

http://localhost:3000
You can create, edit, and delete posts through the web interface.

⚙️ Configuration
Environment variables can be set in .env

Follows standard Rails conventions

Customize UI, pagination, search, and more as needed

📦 Services & Extensions
Background Jobs: Sidekiq / Active Job

Caching: Redis (optional)

Search: pg_search, Elasticsearch (optional)

🚢 Deployment (AWS Example)
Set up environment variables

Build Docker image

Push image to a container registry

Deploy via ECS or manually to EC2 using Docker Compose

Optional: Use GitHub Actions or other CI/CD tools for automation.

📝 Notes
PostgreSQL is the default database

Docker ensures consistent environments

You can manage secrets via .env or AWS Secrets Manager


