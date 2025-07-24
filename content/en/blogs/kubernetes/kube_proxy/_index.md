---
title: ""
linkTitle: "Kube Proxy"
weight: 150
type: docs
tags: ["kubernetes", "networking", "proxy", "iptables", "services"]
platform: kubernetes
---

{{< service-header >}}

**kube-proxy** is a core component that runs on **every Kubernetes node**. It manages the virtual network rules that allow **Pods to communicate with Services**, handling routing and forwarding at the **network layer** using mechanisms like **iptables**, **ipvs**, or **eBPF**.

It’s the silent worker that makes service discovery and networking possible within the cluster.

---

### Topics

{{< render-topic-links >}}

---

### Key Responsibilities

#### Virtual IP and Port Forwarding

When a Service is created, kube-proxy sets up rules to forward traffic from the **cluster IP and port** to one of the associated pods. This load balancing is transparent and efficient.

#### Dynamic Updates

As pods scale or restart, kube-proxy updates its routing rules accordingly. No need to reconfigure anything manually — it reacts to changes in real-time based on the Kubernetes API.

#### Multiple Backends: iptables, IPVS, eBPF

Depending on cluster configuration and kernel support, kube-proxy can use:

- `iptables`: simple rule-based packet forwarding
- `IPVS`: more performant load balancing
- `eBPF`: modern, programmable kernel-based proxying (when supported)

---

### Use Cases

#### Service Abstraction

kube-proxy makes it possible for `Service` objects to work. It hides pod IP churn from clients and ensures that traffic always reaches a healthy backend.

#### Load Balancing Without External Tools

By handling L4 load balancing internally, kube-proxy eliminates the need for external HAProxy/Nginx setups — at least within the cluster boundary.

#### Bridging DNS to Pods

When a pod calls `myservice.default.svc.cluster.local`, kube-proxy ensures the request reaches the correct pod via ClusterIP and port.

---

### Best Practices

Use IPVS mode for better performance in production environments.  
Ensure kube-proxy is healthy and running on all nodes — it's essential for networking.  
Avoid manually modifying iptables rules on nodes running kube-proxy.  
Use observability tools to monitor dropped packets or misrouted traffic.  
Enable metrics export if supported by your distribution (e.g., via Prometheus).

---

kube-proxy quietly powers much of the magic in Kubernetes networking — from ClusterIP services to inter-pod communication. Without it, services wouldn’t know where to go.
