---
title: ""
linkTitle: "Secret"
weight: 20
type: docs
tags: ["kubernetes", "secret", "authentication", "configuration"]
platform: kubernetes
---

{{< service-header >}}

A **Secret** in Kubernetes stores sensitive data such as passwords, OAuth tokens, and SSH keys. Unlike ConfigMaps, Secrets are encoded (typically base64) and are intended to protect confidential information used by workloads running in the cluster.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of Secrets

#### Secure Storage

Secrets are stored separately from pods and can be mounted as files or environment variables. This prevents hardcoding sensitive data into container images or pod specs.

#### Access Control

Secrets can be restricted to specific namespaces and access can be tightly controlled using **RBAC policies**, ensuring only authorized services or users can retrieve them.

---

### Use Cases

#### Application Credentials

Injecting database passwords or API keys into an app at runtime via environment variables or mounted files.

#### TLS Certificates

Storing TLS certs and keys for secure ingress or internal service-to-service communication.

---

### Best Practices

Avoid checking Secrets into version control.  
Use RBAC to limit access.  
Enable encryption at rest in etcd.  
Rotate secrets regularly and use external secret managers if needed.

---

Kubernetes Secrets are essential for managing sensitive data safely. Used correctly, they help secure your workloads while keeping operations simple and declarative.
