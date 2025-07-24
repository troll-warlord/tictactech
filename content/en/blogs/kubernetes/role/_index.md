---
title: ""
linkTitle: "Role"
weight: 230
type: docs
tags: ["kubernetes", "rbac", "security", "access", "role"]
platform: kubernetes
---

{{< service-header >}}

A **Role** in Kubernetes defines a set of **permissions within a specific namespace**. It is part of the **RBAC (Role-Based Access Control)** mechanism and determines **what actions** a user or service account can perform on Kubernetes resources.

Roles are always namespace-scoped. For cluster-wide access, use **ClusterRole**.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of Roles

#### Fine-Grained Access Control

Limit who can **read**, **write**, or **delete** specific resources within a namespace.

#### Principle of Least Privilege

Define minimal necessary permissions — helping reduce the blast radius in case of misconfiguration or compromise.

#### Audit-Friendly

Makes it easy to understand and review **who can do what** in each namespace.

---

### Use Cases

- Granting a developer read-only access to dev namespace
- Allowing a CI/CD service account to update deployments
- Letting an app read secrets but not modify them

---

### Best Practices

- Always scope roles narrowly — avoid wildcard access unless required.
- Use `verbs`, `resources`, and `resourceNames` judiciously.
- Name your roles meaningfully (e.g., `dev-reader`, `cicd-updater`).
- Regularly audit roles and prune unused ones.

---

Roles are **access contracts** in Kubernetes — they define the power a user or system has in a given namespace.
