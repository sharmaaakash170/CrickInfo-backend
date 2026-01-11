# CrickInfo Backend – DevOps Enabled

This repository contains the **backend service for the CrickInfo application**, enhanced with **DevOps best practices**.  
The primary focus of this fork/work is on **containerization, orchestration, and CI/CD automation** to make the backend production-ready and easy to deploy.

---

## 📌 Table of Contents
- Project Overview
- Architecture
- Tech Stack
- DevOps Enhancements
- Project Structure
- Prerequisites
- Setup & Run (Docker)
- Docker Compose
- CI/CD Pipeline
- Environment Variables
- Build & Deployment Flow
- Cleanup
- Best Practices
- License

---

## 📖 Project Overview

**CrickInfo Backend** provides REST APIs for managing cricket-related data such as:
- Matches
- Teams
- Players
- Scores / statistics

This repository focuses on the **backend service**, while DevOps improvements ensure:
- Consistent builds
- Reproducible deployments
- Automated CI pipelines

---

## 🧱 Architecture

```
+--------------------+
|  Client / Frontend |
+---------+----------+
          |
          v
+--------------------+
| Backend API        |
| (Docker Container) |
+--------------------+
```

---

## 🛠 Tech Stack

### Application
- Backend Framework (Node.js / Java / Python – as per implementation)
- REST APIs
- JSON-based communication

### DevOps
- Docker
- Docker Compose
- CI/CD (GitHub Actions / Jenkins)
- Git & GitHub

---

## 🚀 DevOps Enhancements (My Contribution)

### 1️⃣ Dockerization
- Added a **Dockerfile** to containerize the backend service
- Enables consistent runtime across environments
- Simplifies local and production deployment

### 2️⃣ Docker Compose
- Added `docker-compose.yml` for:
  - Running backend service locally
  - Managing service configuration easily
- Enables single-command startup

### 3️⃣ CI/CD Pipeline
- Added CI/CD pipeline to:
  - Checkout source code
  - Install dependencies
  - Build application
  - Build Docker image
- Ensures automated validation on every push

---

## 📂 Project Structure

```
CrickInfo-backend/
├── src/                     # Application source code
├── Dockerfile               # Docker image build
├── docker-compose.yml       # Local orchestration
├── .github/workflows/       # CI/CD pipeline (if GitHub Actions)
│   └── ci.yml
├── package.json / pom.xml   # Dependency management
├── config/                  # App configuration
└── README.md
```

---

## ✅ Prerequisites

- Git
- Docker
- Docker Compose
- Runtime (Node / Java / Python – optional for local dev)

---

## 🐳 Run Using Docker

### Clone Repository
```bash
git clone https://github.com/sharmaaakash170/CrickInfo-backend.git
cd CrickInfo-backend
```

### Start Application
```bash
docker-compose up --build
```

### API Access (example)
```
http://localhost:PORT
```

---

## 🐋 Docker Compose

Docker Compose manages:
- Container lifecycle
- Networking
- Environment variables
- Local development parity with production

---

## 🔁 CI/CD Pipeline

The CI/CD pipeline automates:
- Code checkout
- Dependency installation
- Application build
- Docker image build

Benefits:
- Faster feedback
- Reduced manual errors
- Reliable builds

---

## 🔐 Environment Variables

| Variable | Description |
|--------|------------|
| PORT | Application port |
| DB_HOST | Database host (if applicable) |
| DB_USER | Database user |
| DB_PASSWORD | Database password |
| DB_NAME | Database name |

---

## 📦 Build & Deployment Flow

```
Developer Push
     ↓
CI Pipeline Triggered
     ↓
Build & Test
     ↓
Docker Image Build
     ↓
Ready for Deployment
```

---

## 🧹 Cleanup

```bash
docker-compose down
docker system prune
```

---

## 📌 Best Practices Followed

- Containerized application
- Infrastructure as code
- CI/CD automation
- Environment-driven configuration
- Reproducible builds

---

## 📜 License

This project is intended for **learning, backend development, and DevOps portfolio demonstration**.
