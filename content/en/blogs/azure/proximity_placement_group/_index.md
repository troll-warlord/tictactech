---
title: ""
linkTitle: "Proximity Placement Group"
weight: 65
type: docs
tags: ["azure", "low latency", "vm", "ppg"]
platform: azure
---

{{< service-header >}}

**Azure Proximity Placement Group (PPG)** ensures that your compute resources (like VMs) are physically located **close together in the data center**, minimizing **network latency** between them. It’s useful for latency-sensitive applications such as financial systems, gaming, and HPC workloads.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of PPG

#### Ultra-low Latency

By tightly placing VMs in the same data center or rack, PPG significantly reduces **east-west latency**, which is crucial for chatty applications or tightly coupled services.

#### Better Performance for Multi-VM Architectures

Applications with distributed tiers (web, app, DB) or clusters (e.g., Cassandra, Redis, or SQL Always On) benefit from proximity-based deployments.

#### Predictable Networking

With guaranteed placement, network behavior becomes more predictable compared to generic region/zonal deployments.

---

### Use Cases

- Low-latency applications like **stock trading platforms**, **real-time analytics**, or **multiplayer game servers**
- HPC and AI workloads that require **in-memory computation** across multiple nodes
- Database replication setups (e.g., SQL Server Always On, MongoDB clusters)

---

### Best Practices

- Define the PPG **before** deploying VMs or scale sets.
- Use the same VM size family across all resources in the group for compatibility.
- Combine with **Availability Sets or Zones** cautiously — PPG optimizes placement, not redundancy.

---

Proximity Placement Groups bring your compute resources physically closer for performance gains that matter when every microsecond counts.
