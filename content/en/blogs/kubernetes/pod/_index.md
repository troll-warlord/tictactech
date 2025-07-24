---
title: ""
linkTitle: "Pod"
weight: 210
type: docs
tags: ["kubernetes", "pod", "container", "workload"]
platform: kubernetes
---

{{< service-header >}}

A **Pod** is the **smallest deployable unit** in Kubernetes. It represents **a single instance of a running process**, often wrapping one or more tightly coupled containers that share the same network and storage context.

Most of the time, a pod runs just **one container** (single-container pod), but you can run **sidecars** by adding multiple containers.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of Pods

#### Unified Runtime Environment

Containers in a pod share the **same network namespace** and **volumes**, making it easy to communicate over `localhost` and share data.

#### Atomic Deployment

The pod is deployed, scheduled, and managed as a single atomic unit. If one container fails, the pod as a whole can be restarted.

#### Foundation for Controllers

Pods are typically managed by higher-level objects like Deployments, ReplicaSets, or StatefulSets — **you rarely create standalone pods in production**.

---

### Use Cases

- Running a single containerized application
- Sidecar pattern (e.g., app + logging container)
- Short-lived jobs and batch processing
- Infrastructure services (like CoreDNS)

---

### Best Practices

- Never treat pods as permanent — they're ephemeral.
- Use Deployments/ReplicaSets to manage pods automatically.
- Define readiness and liveness probes for better lifecycle management.
- Use labels to group and select pods efficiently.
- Avoid storing state in pods; use volumes or external stores.

---

Pods are where **containers live and breathe** in Kubernetes. Everything else — from scaling to high availability — builds on top of them.
