---
title: ""
linkTitle: "Compute Gallery"
weight: 50
type: docs
tags: ["azure", "compute", "shared images", "vm scale sets", "automation"]
platform: azure
---

{{< service-header >}}

**Azure Compute Gallery** (formerly Shared Image Gallery) is a service that enables you to manage, share, and distribute custom VM images across your organization, regions, and subscriptions. It's designed for **image versioning, scaling VM deployments**, and **simplifying image management at scale**.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of Azure Compute Gallery

#### Centralized Image Management

Store and organize your custom VM images in a gallery with image definitions and versions. This helps enforce consistency across environments and teams.

#### Global Replication

Distribute images to multiple Azure regions for faster deployments and reduced latency. This also improves availability and disaster recovery options.

#### VM Scale Set Integration

Seamlessly integrate shared images with **VM Scale Sets**, enabling large-scale deployments using a common image source.

#### Support for Multiple Image Versions

Maintain **multiple versions** of the same image definition (e.g., v1, v2, v3), enabling rollback and phased rollouts of updates.

---

### Use Cases

#### Enterprise-Wide Golden Images

Define and manage “golden images” with pre-installed software, configurations, and security policies for different departments or workloads.

#### Scaling Deployments Globally

Distribute standardized images across regions for consistent provisioning of VM scale sets, lab environments, or developer sandboxes.

#### CI/CD Integration

Integrate with image-building pipelines (e.g., using Packer or Azure Image Builder) to automatically push validated images into the gallery as part of your DevOps process.

---

### Best Practices

- Use **image definitions** to group related images (e.g., “Ubuntu-WebServer”) and **versions** to track updates.
- Set **replication targets** based on the geography of your deployments to ensure faster provisioning.
- Use **RBAC** and **resource locks** to control access and prevent accidental deletion.
- Monitor image distribution and usage with **Azure Monitor** and **Activity Logs**.
- Tag images and versions for lifecycle management and auditing.

---

Azure Compute Gallery simplifies the process of managing and sharing custom VM images at scale. Whether you're running production workloads, managing test environments, or deploying large VM fleets, it offers the control and flexibility you need for consistent and efficient image-based deployments.
