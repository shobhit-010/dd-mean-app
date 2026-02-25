# 🚀 MEAN Stack CRUD Application – Dockerized Deployment on AWS EC2

## 📌 Overview
This project is a full-stack **MEAN (MongoDB, Express, Angular, Node.js)** CRUD application deployed on an **AWS EC2 instance** using **Docker** and **Docker Compose**.

---

## 🛠️ Tech Stack

- Angular 15
- Node.js
- Express.js
- MongoDB
- Docker
- Docker Compose
- AWS EC2
- Nginx

## 🏗️ Architecture

```bash
Internet
↓
EC2 Instance
├── Frontend (Angular + Nginx) → Port 80
├── Backend (Node + Express) → Port 8080
└── MongoDB (Internal Docker Network)

```

---

## 🐳 Docker Images
- **Backend**: https://hub.docker.com/r/shobhit010/mean-backend
- **Frontend**: https://hub.docker.com/r/shobhit010/mean-frontend

---

## ⚙️ Deployment Steps

### 1️⃣ Install Docker on EC2
```bash
sudo apt update
sudo apt install docker.io docker-compose-plugin -y
sudo usermod -aG docker ubuntu
```

**Re-login after this step**

## 2️⃣ Create docker-compose.yml
```bash
services:

  mongo:
    image: mongo
    restart: unless-stopped
    volumes:
      - mongo-data:/data/db

  backend:
    image: shobhit010/mean-backend:latest
    restart: unless-stopped
    ports:
      - "8080:8080"
    depends_on:
      - mongo

  frontend:
    image: shobhit010/mean-frontend:latest
    restart: unless-stopped
    ports:
      - "80:80"
    depends_on:
      - backend

volumes:
  mongo-data:
```

3️⃣ Run Application
```bash
docker compose up -d
```


🌐 Access Application
```bash
Frontend: http://<EC2_PUBLIC_IP>
```

```bash
Backend API: http://<EC2_PUBLIC_IP>:8080/api/tutorials 
```

🔐 AWS Security Group Configuration
| Port | Purpose       |
|------|---------------|
| 80   | Frontend      |
| 8080 | Backend API   |
| 22   | SSH           |


## Demo

### Running application 
<img width="1421" height="610" alt="Screenshot 2026-02-25 060649" src="https://github.com/user-attachments/assets/1d03ecec-bc97-4d82-9e9b-4cdb92e04393" />
<img width="1242" height="348" alt="Screenshot 2026-02-25 060716" src="https://github.com/user-attachments/assets/82889950-669d-471c-9c86-95f9b3ba3da2" />

### docker ps output
<img width="1853" height="156" alt="image" src="https://github.com/user-attachments/assets/87ad1c10-d1df-40c5-8b5c-3e77aa6030ba" />

### EC2 instance
<img width="1879" height="771" alt="image" src="https://github.com/user-attachments/assets/16d28fd0-3cb2-496a-a4ee-074964b881ff" />

## 👤 Author: `Shobhit Goyal`


✅ Next Steps For Submission
```bash
git add .
git commit -m "Final deployment working on EC2"
git push
```
