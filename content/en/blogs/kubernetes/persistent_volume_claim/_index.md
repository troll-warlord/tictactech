---
title: ""
linkTitle: "Persistent Volume Claim"
weight: 200
type: docs
tags: ["kubernetes", "storage", "claim", pvc", "persistent"]
platform: kubernetes
---

{{< service-header >}}

A **PersistentVolumeClaim (PVC)** is how a pod requests storage from the Kubernetes cluster. It’s like **booking a disk** by specifying the required size, access mode, and optional storage class.

The PVC binds to a matching **PersistentVolume (PV)** — abstracting away the storage backend from the user.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of PVC

#### Simple Abstraction

Developers only care about size and access mode — not how or where the volume is provisioned.

#### Dynamic Provisioning

PVCs can trigger automatic creation of PVs via **StorageClasses** — allowing scalable, self-service storage.

#### Supports Stateful Apps

PVCs are pod-agnostic — they persist across restarts and reattachments, making them ideal for databases, logs, or media.

#### Access Control

PVCs can specify access modes (`ReadWriteOnce`, `ReadOnlyMany`, `ReadWriteMany`) to enforce how volumes are shared.

---

### Use Cases

- Mounting a disk for MySQL or MongoDB pod
- Storing uploaded files for a web app
- Attaching volume to multiple pods (with RWX mode)
- CI/CD systems needing shared cache space

---

### Best Practices

- Always request only the size you need — storage is finite.
- Use `StorageClass` to manage performance and cost tiers.
- Monitor bound/unbound PVCs — unbound ones indicate issues.
- Don’t hardcode PV names; let PVC auto-bind.
- Apply resource quotas to avoid over-provisioning.

---

PVCs are your gateway to persistent storage. They make storage **declarative, reusable, and portable**, while insulating developers from the complexities of provisioning.
