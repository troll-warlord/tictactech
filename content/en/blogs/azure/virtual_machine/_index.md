---
title: ""
linkTitle: "Virtual Machine (VM)"
weight: 20
type: docs
tags:
  [
    "azure",
    "compute",
    "iaas",
    "virtual machine",
    "vm",
    "windows",
    "linux",
    "scale set",
  ]
platform: azure
---

{{< service-header >}}

**Azure Virtual Machines** offer scalable, on-demand computing resources in the cloud. As an Infrastructure-as-a-Service (IaaS) offering, they allow you to run Windows or Linux workloads without worrying about underlying hardware, while retaining full control over the operating system and installed applications.

Azure VMs are ideal when you need **custom software configurations, legacy applications, or administrative control** at the OS level.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of Azure Virtual Machine

#### Flexibility in Operating Systems and Workloads

Azure VMs support a wide range of **preconfigured OS images**, including Windows Server, Ubuntu, CentOS, RHEL, SUSE, and more. You can also bring your own custom image if needed. This flexibility makes it easy to run any workload—from legacy Windows-based apps to modern Linux services.

#### Complete Administrative Control

You have **root/administrator-level access** to the VM, allowing full customization. You can install and configure software, run scheduled tasks, adjust networking or firewall settings, and control startup/shutdown behavior.

#### Broad Range of Sizes and Performance Options

Azure offers VMs optimized for compute, memory, storage, or GPU workloads. For example, you can choose a **D-series VM** for general purpose use, an **E-series** for memory-intensive workloads like SAP HANA, or **NV-series** for GPU-powered applications like video rendering or AI inferencing.

#### Integration with Azure Services

VMs easily integrate with services like **Azure Monitor** for performance tracking, **Azure Backup** for data protection, **Azure Bastion** for secure browser-based SSH/RDP access, and **Update Management** for patching. You can also automate deployment using **ARM templates** or **Bicep**.

#### High Availability and Scalability

Use **Availability Sets** or **Availability Zones** to ensure high availability during maintenance events or hardware failures. For scalability, deploy **Virtual Machine Scale Sets** that automatically manage and scale identical VMs.

---

### Use Cases

#### Lift-and-Shift Migrations

Azure VMs are ideal for migrating existing workloads without redesigning the application. You can replicate on-prem VMs using Azure Migrate and retain the same OS and configurations.

#### Hosting Custom or Legacy Applications

Some apps require full OS control or rely on specific configurations or drivers. Azure VMs let you run such applications in a cloud environment without limitations imposed by PaaS offerings.

#### Development and Testing Environments

Developers can quickly spin up VMs with required tools and configurations, enabling isolated test environments. Dev/Test pricing also reduces costs for non-production workloads.

#### Remote Desktop Services or Jump Boxes

Deploy Windows VMs as **remote desktops** for your team, or use them as **bastion hosts** (jump boxes) to securely access private network resources.

#### High-Performance Computing (HPC) and GPU Workloads

Use VM series like **HB, HC, or ND** for simulations, rendering, machine learning inference/training, or data modeling that require high compute or GPU resources.

---

### Best Practices

- Use **Managed Disks** for improved durability, backup integration, and performance over unmanaged storage.
- Secure VM access using **Azure Bastion** or **Just-In-Time (JIT)** access via Azure Defender.
- Place VMs in **Availability Zones** for high resiliency across Azure datacenters.
- Keep OS and application patches up to date using **Azure Update Management**.
- Monitor performance and health with **Azure Monitor**, **Log Analytics**, and **Azure Automation**.
- Use **Azure Tags** to organize and track VM usage across teams or projects.

---

Azure Virtual Machines provide the core building blocks for custom and legacy workloads in the cloud. They combine flexibility, control, and powerful integrations to help run traditional or specialized workloads in a highly available and scalable manner.
