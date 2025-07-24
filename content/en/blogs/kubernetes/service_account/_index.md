---
title: ""
linkTitle: "Service Account"
weight: 20
type: docs
tags: ["kubernetes", "authentication", "serviceaccount", "rbac"]
platform: kubernetes
---

{{< service-header >}}

A **ServiceAccount** in Kubernetes provides an identity for processes running inside a pod. It's used by the pod to authenticate with the Kubernetes API server and access resources within the cluster.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of ServiceAccount

#### Scoped Access Control

Each ServiceAccount can be granted fine-grained access using **RBAC** policies, limiting what it can read, modify, or list in the cluster.

#### API Authentication

When a pod is created, Kubernetes automatically mounts a token in the pod that allows it to authenticate with the API server using its assigned ServiceAccount.

---

### Use Cases

#### Controller and Operator Access

Granting a pod (like a controller or daemon) the ability to interact with other Kubernetes resources.

#### External Identity

Used by tools like kube-proxy, Helm, or custom apps to authenticate as a managed identity rather than a user.

---

### Best Practices

Avoid using the default ServiceAccount in production.  
Create dedicated ServiceAccounts per app.  
Bind only required permissions using Roles or ClusterRoles.  
Regularly rotate tokens and audit permissions.

---

ServiceAccounts are a key security primitive for in-cluster authentication. Use them wisely to control workload identity and limit access surface.
