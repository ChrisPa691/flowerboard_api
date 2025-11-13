# ⚙️ flowboard-api — FastAPI Backend for Kanban App

Backend API for the **Flowboard** productivity app.  
Implements JWT authentication, board/task management, and real-time updates with WebSockets.  
Deployed via Docker and AWS (EC2 + RDS + S3).

---

## 🚀 Features
- JWT-based authentication (access & refresh tokens)
- CRUD for users, boards, columns, and tasks
- PostgreSQL + SQLAlchemy ORM + Alembic migrations
- Real-time task updates with `python-socketio`
- Email notifications (SES integration)
- Dockerized + CI/CD pipeline (GitHub Actions)

---

## 🛠️ Tech Stack
- **Framework:** FastAPI  
- **Database:** PostgreSQL + SQLAlchemy  
- **Auth:** JWT (PyJWT + passlib)  
- **Async Tasks:** Celery / RQ  
- **Deployment:** Docker, AWS (EC2, RDS, S3)

---

## ⚙️ Setup (Local Dev)
```powershell
git clone <repo-url>
cd flowboard-api
python -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install -r requirements.txt
cp .env.example .env
uvicorn app.main:app --reload
```
Visit `http://localhost:8000/docs` for Swagger UI.

---

## 🐳 Docker Setup
```powershell
docker-compose up --build
```

---

## 📁 Folder Structure
```
app/
├── api/
│   └── v1/
├── core/
├── db/
├── models/
├── schemas/
├── services/
└── tests/
```

---

## ☁️ Deployment
- Docker image → AWS ECR  
- Deploy to ECS Fargate or EC2  
- Database → AWS RDS (PostgreSQL)  
- File storage → AWS S3  

---

## ✅ Roadmap
- [ ] Add OAuth (Google Login)
- [ ] Add rate limiting
- [ ] Improve unit tests coverage to 90%
