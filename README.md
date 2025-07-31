# 🐳 Docker Learning Project

**Docker Learning Project** is a sandbox repository to experiment with building and deploying Docker containers using Go and Python. It features two simple services, built with separate `Dockerfile`s, and delivered to Docker Hub under the `ry3br34d/docker_learning` namespace.

---

## 🚀 What’s Inside

| Stack        | Purpose                 | Docker Image                         | Tag         |
|--------------|-------------------------|--------------------------------------|-------------|
| Go           | A tiny Go-based app     | `ry3br34d/docker_learning:go-latest` | `latest` / `v0.2.0` |
| Python (Flask) | Simple Python API    | `ry3br34d/docker_learning:python-latest` | `latest` / `v0.2.0` |

Each service is lightweight, self-contained, and ideal for learning:
- ✅ Multi-stage Docker builds  
- ✅ Port exposure  
- ✅ Simple dependency management

---

## 📚 Quick Start

### Clone and explore
```bash
git clone https://github.com/gingerknight/docker_learning
cd docker_learning
```

### Build and run locally (optional)

#### Go app:
```
docker build -t go-app -f Dockerfile.go .
docker run --rm -p 8080:8080 go-app
```

#### Python (Flask) app:
```
docker build -t py-app -f Dockerfile.python .
docker run --rm -p 5000:5000 py-app
```

#### Pull the official Docker Hub images
```
docker pull ry3br34d/docker_learning:go-latest
docker pull ry3br34d/docker_learning:python-latest
```

#### Run the Go service:
```
docker run --rm -p 8080:8080 ry3br34d/docker_learning:go-latest
```
#### Run the Python service:
```
docker run --rm -p 5000:5000 ry3br34d/docker_learning:python-latest
```
## 🛠️ Why This Repo Exists

### This repo helps you learn:

    🔄 How to create and tag Docker images (e.g. latest, v0.2.0)

    🧱 Multi-stage builds for minimal image size

    ⚙️ Running and exposing ports

    🔗 Pushing and pulling from Docker Hub

It’s also a template for reusable workflows or CI pipelines.

## 📦 Image Tags

You’ll find two tagged releases in Docker Hub for each stack:

    latest — always points to newest build (auto-updated)

    v0.2.0 — stable snapshot of the current feature set

Feel free to build and push new tags (e.g. v0.2.1) as you iterate.
💡 Learnings & Next Steps

    ✅ Built lightweight Docker containers

    ✅ Published and tagged images on Docker Hub

    ✅ Local builds versus remote pull workflows

Coming soon:

    🚧 Add tests and CI pipelines (e.g. GitHub Actions)

    🧭 Add status badges (build, Docker pulls)

    📄 Write CHANGELOG.md for version tracking


🚨 Troubleshooting

- If you get port already in use errors, check for existing Docker containers or processes using ports 8080/5000.
- If the container exits immediately, make sure the entrypoint is correct and the binary/app is listening.
- If you get `exec` error, check that the go binary is build for the docker OS. They are built for Linux x86.

