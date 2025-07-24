---
title: ""
linkTitle: "Docker CLI"
weight: 10
type: docs
tags: ["docker", "cli", "container", "devops", "development"]
platform: docker
---

{{< service-header >}}

The **Docker CLI** (Command Line Interface) is the primary tool for interacting with the Docker daemon. It enables developers and operators to build, manage, run, and inspect containers and images from a terminal.

With just a few commands, you can control the entire lifecycle of containers—from building images to running production workloads.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of Docker CLI

#### Consistent and Scriptable Interface

The CLI provides a **unified, consistent experience** across operating systems, making it ideal for scripting and automation in CI/CD pipelines. You can use shell scripts to automate container tasks like building, tagging, and pushing to a registry.

#### Fine-Grained Container Control

From managing volumes and networks to inspecting container stats and logs, the CLI exposes **fine-grained commands** for in-depth control and troubleshooting. For example, `docker exec` lets you run a command inside a running container.

#### Fast Prototyping and Local Development

Developers can quickly test code or services in containers by running `docker run` commands interactively—no need to write config files. This makes the CLI ideal for **experimentation and debugging**.

#### Works Seamlessly with Docker Engine

The CLI communicates with the **Docker Engine** over a REST API, ensuring real-time execution and feedback. Commands like `docker info`, `docker ps`, and `docker logs` provide immediate visibility into the container environment.

---

### Use Cases

- **Running local development environments** using `docker run`, `docker build`, and `docker exec`.
- **Managing images and containers** on production servers with SSH access.
- **Automating image builds** with shell scripts in CI/CD workflows.
- **Debugging issues** by inspecting logs (`docker logs`) or opening a shell (`docker exec -it`).
- **Managing resources** like volumes, networks, and container limits.

---

### Best Practices

- Use `--rm` with `docker run` to clean up containers after exit in dev workflows.
- Use `docker stats` and `docker top` for real-time container monitoring.
- Use `docker inspect` to retrieve detailed metadata about containers or images.
- Combine with tools like `jq` for parsing JSON CLI output in scripts.
- Alias frequent commands (e.g., `alias dps='docker ps -a'`) to boost productivity.
