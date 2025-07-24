---
title: ""
linkTitle: "Kubelet"
weight: 160
type: docs
tags: ["kubernetes", "node", "agent", "runtime", "pods"]
platform: kubernetes
---

{{< service-header >}}

**kubelet** is the **primary node agent** in Kubernetes. It runs on every node and is responsible for **managing the lifecycle of pods** assigned to that node. It interacts with the container runtime (e.g., containerd or Docker), ensuring containers are running, healthy, and conforming to spec.

Without kubelet, your node is invisible to the control plane.

---

### Topics

{{< render-topic-links >}}

---

### Key Responsibilities

#### Pod Lifecycle Management

kubelet watches the Kubernetes API for any pods scheduled to its node. It then **creates**, **monitors**, **restarts**, or **cleans up** containers as needed based on the PodSpec.

#### Node Registration & Heartbeat

kubelet registers the node with the cluster and periodically sends **status updates** (e.g., CPU, memory, disk usage, conditions) to the control plane to indicate it’s healthy and available.

#### Health Checks & Readiness

It executes **liveness** and **readiness** probes for pods. This helps Kubernetes decide whether a container is healthy or ready to serve traffic.

#### Log & Metric Access

kubelet exposes logs and metrics (via `/metrics` and `/stats/summary`) that are essential for monitoring and debugging node-level behavior.

---

### Use Cases

- Bootstrapping a new worker node
- Managing container runtime interaction
- Node-level troubleshooting
- Custom kubelet configuration for edge/IoT workloads
- Hosting local static pods (e.g., CoreDNS or custom agents)

---

### Best Practices

- Always run the kubelet as a systemd service with appropriate flags.
- Use `--read-only-port=0` to disable insecure access.
- Limit resource usage using `--kube-reserved` and `--system-reserved`.
- Set up proper TLS bootstrap or authentication modes for security.
- Monitor logs (`journalctl -u kubelet`) for node-level issues.

---

kubelet is the heartbeat of each Kubernetes node. It takes orders from the control plane and executes them reliably — ensuring your pods are healthy, running, and behaving as expected.
