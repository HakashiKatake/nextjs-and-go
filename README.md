# Todo App with Next.js and Go

A full-stack todo application built with Next.js frontend, Go backend API, and PostgreSQL database. The entire application is containerized using Docker for easy setup and deployment.

## Tech Stack

- **Frontend**: Next.js
- **Backend**: Go with Gorilla Mux
- **Database**: PostgreSQL
- **Containerization**: Docker & Docker Compose

## Prerequisites

Before you begin, ensure you have the following installed:

- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- Git

## Quick Start

1. Clone the repository:
   ```bash
   git clone https://github.com/HakashiKatake/nextjs-and-go.git
   cd nextjs-and-go
   ```

2. Start all services with Docker Compose:
   ```bash
   docker compose up -d
   ```

3. Access the application:
   - Frontend: [http://localhost:3000](http://localhost:3000)
   - Backend API: [http://localhost:8080](http://localhost:8080)

## Application Structure

```
nextjs-and-go/
├── frontend/           # Next.js frontend application
│   ├── next.dockerfile # Dockerfile for Next.js
│   └── ...            
├── backend/            # Go backend API
│   ├── go.dockerfile   # Dockerfile for Go
│   ├── main.go         # Main Go application file
│   └── ...
├── compose.yaml        # Docker Compose configuration
└── README.md           # This file
```

## Available API Endpoints

The backend API provides the following endpoints:

- `GET /api/go/users` - Get all users
- `POST /api/go/users` - Create a new user
- `GET /api/go/users/{id}` - Get user by ID
- `PUT /api/go/users/{id}` - Update a user
- `DELETE /api/go/users/{id}` - Delete a user

## Development

### Frontend Development

To work on the frontend locally:

```bash
cd frontend
npm install
npm run dev
```

### Backend Development

To work on the backend locally:

```bash
cd backend
# Make sure PostgreSQL is running (can use Docker for this)
export DATABASE_URL='postgres://postgres:postgres@localhost:5432/postgres?sslmode=disable'
go run main.go
```

### Database

The PostgreSQL database runs on port 5432. Data is persisted using a Docker volume.

To connect to the database directly:

```bash
docker compose exec db psql -U postgres
```

## Container Management

- Start all containers: `docker compose up -d`
- Stop all containers: `docker compose down`
- View logs: `docker compose logs`
- Rebuild containers: `docker compose build`
- Start only the database: `docker compose up -d db`

## Troubleshooting

1. **Docker Desktop must be running** for the application to work
2. If you encounter a "port already in use" error, ensure no other services are using ports 3000, 8080, or 5432
3. For database connection issues, check that the PostgreSQL container is running: `docker compose ps`

## License

MIT License

