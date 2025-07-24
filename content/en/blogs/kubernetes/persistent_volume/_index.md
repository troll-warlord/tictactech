---
title: ""
linkTitle: "Persistent Volume"
weight: 190
type: docs
tags: ["kubernetes", "storage", "pv", "volumes", "persistent"]
platform: kubernetes
---

{{< service-header >}}

A **PersistentVolume (PV)** in Kubernetes is a **cluster-level storage resource** that exists independent of pods. It represents actual storage — provisioned manually or dynamically — that can be **mounted by pods via PersistentVolumeClaims**.

Think of it as a physical disk that can be lent out to workloads.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of PersistentVolumes

#### Decouples Storage from Compute

PV is a standalone resource — a pod can die or reschedule, but the volume (and its data) remains intact.

#### Supports Multiple Backends

PVs can come from various sources — EBS, NFS, Azure Disk, Google PD, CephFS, local disks, etc.

#### Foundation for Stateful Workloads

Without PVs, apps like databases, logs, and caches lose data on pod restart. PV makes **stateful apps** viable.

#### Dynamic or Static Provisioning

Admins can pre-provision PVs (static) or use a **StorageClass** to create them on demand (dynamic).

---

### Use Cases

- Backing persistent databases (PostgreSQL, MySQL)
- Storage for logs, artifacts, media
- Caching layers like Redis with persistence enabled
- Hosting user uploads or application state

---

### Best Practices

- Use `ReadWriteOnce` for most cases unless shared access is needed.
- Apply proper `reclaimPolicy` (e.g., `Retain` vs `Delete`).
- Tag PVs with labels to support matching.
- Monitor storage utilization and reclaim unused PVs.
- Use `StorageClass` for flexibility and dynamic scaling.

---

PersistentVolumes bring **durable storage** to Kubernetes — making it suitable for production-grade applications that need to remember data.
