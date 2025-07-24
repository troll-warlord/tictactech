---
title: ""
linkTitle: "Cloud Controller Manager"
weight: 20
type: docs
tags: ["kubernetes", "cloud integration", "control plane"]
platform: kubernetes
---

{{< service-header >}}

The **Cloud Controller Manager** (CCM) is a Kubernetes control plane component that enables integration with cloud-specific infrastructure. It allows Kubernetes to interact with your cloud provider’s APIs to provision and manage resources such as load balancers, block storage, and network routes.

Before the CCM existed, cloud provider logic was bundled into the core Kubernetes binaries. The CCM separates this logic, allowing cloud vendors to evolve independently and integrate Kubernetes in a more modular and scalable manner.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of Cloud Controller Manager

#### Decoupled Cloud Integration

By abstracting out cloud-specific logic from the core Kubernetes binaries, CCM promotes a clean separation of concerns. Kubernetes core can evolve independently, and cloud providers can implement and maintain their own plugins without touching upstream components.

#### Automated Infrastructure Provisioning

The CCM can automatically provision and configure cloud infrastructure to match your Kubernetes specifications. For example:

- Create a cloud **load balancer** when a `Service` of type `LoadBalancer` is deployed.
- Attach **persistent volumes** from your cloud’s block storage system when a `PersistentVolumeClaim` is made.
- Manage **network routes** and update them as nodes are added or removed.

#### Consistent Multi-Cloud Support

Cloud providers implement their own CCM interfaces, which means you can run Kubernetes in AWS, Azure, GCP, or other environments with consistent APIs and behaviors—while still taking advantage of native cloud features.

---

### Use Cases

#### Load Balancer Automation

When you expose a Kubernetes service as `type: LoadBalancer`, the CCM communicates with your cloud provider (e.g., AWS ELB, Azure Load Balancer, or GCP Network Load Balancer) to automatically provision and configure an external load balancer. This saves you from having to manually set up ingress endpoints.

#### Route Management

For clusters running in environments that support overlay networking (e.g., AWS VPC or GCP VPC), the CCM configures and updates routing tables so that pods can communicate across nodes using their internal IPs.

#### Volume Lifecycle Management

With the `PersistentVolume` subsystem, the CCM ensures that block storage volumes (like AWS EBS or Azure Disks) are created, attached, and detached in sync with pod lifecycle events.

---

### Best Practices

- **Use the official CCM** for your cloud provider to ensure compatibility and support.
- Monitor the **logs** and **metrics** of the Cloud Controller Manager to detect provisioning issues early.
- If running in a private cloud or on-premise, consider whether you need CCM at all—or if you'd benefit from a custom implementation.
- For hybrid and multi-cloud environments, validate your CCM behavior thoroughly as cloud feature sets may vary.
- Always test cloud resource cleanup as part of your CI/CD or cluster teardown process to avoid orphaned infrastructure.

---

The Cloud Controller Manager bridges the Kubernetes world with the underlying cloud provider, enabling native infrastructure automation without vendor lock-in. It's a foundational piece for running cloud-native Kubernetes clusters at scale.
