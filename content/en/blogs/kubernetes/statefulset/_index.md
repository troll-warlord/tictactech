---
title: ""
linkTitle: "Stateful Set"
weight: 20
type: docs
tags: ["kubernetes", "stateful", "workloads", "statefulset", "storage"]
platform: kubernetes
---

{{< service-header >}}

A **StatefulSet** is a Kubernetes workload API object used to manage **stateful applications**. Unlike Deployments, it provides stable network identities, ordered pod creation/deletion, and persistent storage.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of StatefulSet

#### Stable Identity

Pods get consistent names (`pod-0`, `pod-1`, etc.) and retain their identity across restarts.

#### Persistent Volumes

Each pod gets its own persistent volume (PVC), which is not shared or deleted automatically — ideal for databases and other storage-heavy workloads.

---

### Use Cases

#### Databases

Use StatefulSets to deploy clustered databases like PostgreSQL, Cassandra, MongoDB, and Kafka where storage persistence and pod identity matter.

#### Distributed Systems

Workloads needing stable DNS entries and controlled start/stop sequencing.

---

### Best Practices

Use headless services for stable DNS.  
Avoid scaling StatefulSets without proper volume provisioning.  
Use readiness probes to ensure apps are ready before traffic hits.  
Consider `PodDisruptionBudgets` to maintain availability during updates.

---

StatefulSets are the go-to controller for persistent and ordered workloads. They combine storage guarantees, predictable identities, and stability for complex distributed systems.
