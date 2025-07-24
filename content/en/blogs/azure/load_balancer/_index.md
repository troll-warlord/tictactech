---
title: ""
linkTitle: "Load Balancer"
weight: 35
type: docs
tags:
  [
    "azure",
    "load balancer",
    "layer 4",
    "tcp",
    "udp",
    "inbound nat",
    "outbound rules",
  ]
platform: azure
---

{{< service-header >}}

Azure Load Balancer is a high-performance, **Layer 4 (TCP/UDP)** load balancer that distributes traffic to virtual machines and other resources in a **virtual network**. It supports both **public** and **internal** scenarios, making it suitable for internet-facing services and private application tiers alike.

It is ideal when low latency, high throughput, and high availability are required — such as for gaming, VoIP, or traditional enterprise applications that use TCP or UDP protocols.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of Azure Load Balancer

#### High Throughput with Ultra-Low Latency

Azure Load Balancer is built for performance-critical applications. It can handle **millions of flows per second** with minimal latency. This makes it ideal for backend services such as database access proxies or real-time applications.

#### TCP/UDP Layer 4 Load Balancing

It works at the transport layer, distributing connections purely based on source/destination IP and port. It supports **both TCP and UDP protocols**, unlike Azure Application Gateway which only handles HTTP/S.

#### Health Probes for Real-Time Monitoring

You can define custom health probes to detect VM failure. If a backend becomes unhealthy, the Load Balancer stops sending traffic to it until it recovers.

#### Public and Internal Load Balancing

- **Public Load Balancer**: Routes traffic from the internet to Azure resources (e.g., exposing VMs, NAT-ing services).
- **Internal Load Balancer (ILB)**: Routes traffic within your VNet — great for load-balancing between backend tiers (e.g., web → API → database).

#### Outbound SNAT and Port Forwarding

For VMs without public IPs, Load Balancer enables **outbound connectivity** through **source NAT**. It also supports **Inbound NAT rules** to map specific ports on the frontend to backend VMs for RDP or SSH access.

---

### Use Cases

#### Multi-Tier Application Load Balancing

Use a public load balancer for frontend traffic (e.g., from users) and an internal load balancer to distribute traffic to backend services (e.g., internal APIs or databases).

#### Scaling Legacy TCP/UDP Applications

Distribute traffic for protocols like **SMTP**, **DNS**, **FTP**, or **gaming servers** that rely on non-HTTP communication.

#### Outbound Internet Access for Private VMs

If your backend VMs don’t have public IPs, associate them with a Load Balancer to enable outbound traffic for updates, telemetry, or external service calls.

#### NAT Access to VMs

Use **Inbound NAT rules** to RDP or SSH into individual VMs via the same public IP and different ports — especially useful in test/dev environments with multiple VMs.

---

### Best Practices

- Prefer **Standard SKU** for production — it supports Availability Zones, is secure by default, and provides better performance than Basic.
- Always configure **custom health probes** that validate application-layer functionality (e.g., return code on `/health`) rather than just checking TCP connectivity.
- Combine Load Balancer with **Availability Sets** or **VM Scale Sets** to ensure traffic is always routed to healthy instances.
- If using a Standard SKU Public Load Balancer, ensure **NSG rules explicitly allow** the required inbound/outbound traffic — it's secure by default.
- Monitor performance using **Azure Monitor** metrics like `DipAvailability`, `SnatPortUtilization`, and packet drops.

---

Azure Load Balancer provides fast, reliable, and cost-effective traffic distribution across your network resources, especially where non-HTTP(S) traffic or raw TCP/UDP performance is critical.
