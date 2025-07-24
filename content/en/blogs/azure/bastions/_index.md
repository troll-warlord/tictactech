---
title: ""
linkTitle: "Bastion"
weight: 45
type: docs
tags: ["azure", "bastion", "ssh", "rdp", "network security"]
platform: azure
---

{{< service-header >}}

**Azure Bastion** is a fully managed service that provides secure and seamless RDP and SSH connectivity to your virtual machines **directly through the Azure portal**—without exposing the VMs to the public internet.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of Azure Bastion

#### No Public IP Required

Connect to VMs without assigning public IPs, thereby reducing exposure to internet-based threats and improving security posture.

#### Secure by Default

Azure Bastion resides inside your virtual network and connects using **SSL over port 443**, ensuring encrypted traffic end-to-end. It eliminates the need to open ports like 22 or 3389 on your NSGs.

#### Simplified Access

Users can initiate SSH or RDP sessions **via the Azure portal** using just a browser—no client software needed.

#### Managed Service

No need to provision, patch, or scale your own jumpboxes or bastion hosts. Azure handles the underlying infrastructure.

---

### Use Cases

#### Secure VM Management

Admins can manage virtual machines without opening public ports or provisioning jump servers, reducing the attack surface.

#### Role-Based Access Control (RBAC)

Integrates with Azure RBAC to ensure only authorized users can initiate sessions. Combine with **Just-in-Time (JIT) VM access** for enhanced control.

#### Multi-User Connectivity

Allows multiple admins or developers to connect to different VMs in parallel through the portal—no VPN or client dependency.

---

### Best Practices

- Deploy Bastion in a **dedicated subnet** named `AzureBastionSubnet`.
- Use **Azure Policy** to ensure VMs do not have public IPs and are only accessed via Bastion.
- Combine with **NSGs** and **User Defined Routes (UDRs)** to tightly control traffic flow.
- Enable **session recording and auditing** using Azure Monitor and diagnostic logs.
- Use **private DNS zones** to simplify name resolution inside the VNet.

---

Azure Bastion is ideal for secure, scalable, and modern remote VM access within Azure. It removes the complexity and risks of traditional jump servers, helping teams manage infrastructure with confidence and compliance.
