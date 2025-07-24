---
title: ""
linkTitle: "RoleBinding"
weight: 240
type: docs
tags: ["kubernetes", "rbac", "rolebinding", "authorization", "security"]
platform: kubernetes
---

{{< service-header >}}

A **RoleBinding** connects a **Role** to a **user, group, or service account**, granting them the permissions defined in that Role — but only within a namespace.

RoleBindings are the **link** between access policies (Roles) and identities (users or service accounts).

---

### Topics

{{< render-topic-links >}}

---

### Benefits of RoleBindings

#### Scoped Authorization

Binds permissions to specific users within a namespace — preventing cluster-wide access.

#### Modular Security

Separate roles (what can be done) from bindings (who can do it) — leading to reusable and auditable policies.

#### Supports Groups and ServiceAccounts

You can bind roles to **users, groups, or service accounts**, enabling both human and automated access.

---

### Use Cases

- Giving developers access to their own namespaces
- Allowing a CI/CD pipeline (via ServiceAccount) to deploy apps
- Assigning read-only access to auditors or QA teams

---

### Best Practices

- Prefer Role + RoleBinding for namespace scope, ClusterRole + ClusterRoleBinding for cluster-wide.
- Use ServiceAccounts for automation and CI/CD integrations.
- Clean up RoleBindings when users or apps are removed.
- Keep RBAC policies under version control for traceability.

---

RoleBindings are how **access becomes real** — they determine **who gets what kind of access** to your Kubernetes resources.
