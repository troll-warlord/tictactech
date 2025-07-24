---
title: ""
linkTitle: "Transit Gateway"
weight: 84
type: docs
tags: ["aws", "network", "transit", "gateway", "vpc connectivity", "hub-spoke"]
platform: aws
---

{{< service-header >}}

**AWS Transit Gateway** acts as a **hub** to connect multiple VPCs, on-prem networks (via VPN or Direct Connect), and other AWS accounts using a **centralized router** model.

---

### Topics

{{< render-topic-links >}}

---

### Key Features

- **Hub-and-spoke** architecture.
- Connects **VPCs**, **VPNs**, and **Direct Connect**.
- **Inter-region peering** support.
- Supports **route propagation** and **domain segmentation**.

---

### Benefits

- Simplifies network complexity.
- Centralized control and routing.
- Supports **thousands of attachments**.
- Reduces need for full mesh peering.

---

### Use Cases

- Large-scale multi-VPC environments.
- Hybrid connectivity with multiple on-prem sites.
- Centralized firewall or inspection via service insertion.

---

### Best Practices

- Use **route tables** for segmentation.
- Monitor with **Transit Gateway Flow Logs**.
- Combine with **Resource Access Manager (RAM)** for cross-account sharing.
- Integrate with **Network Firewall** for traffic control.
