---
title: ""
linkTitle: "NAT Gateway"
weight: 60
type: docs
tags: ["azure", "nat", "egress", "vnet", "public ip"]
platform: azure
---

{{< service-header >}}

**Azure NAT Gateway** provides **outbound Internet connectivity** for resources inside an Azure Virtual Network in a secure, scalable, and efficient manner. It ensures all egress traffic is translated through a consistent set of public IP addresses, simplifying IP management and outbound traffic flow.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of Azure NAT Gateway

#### Predictable and Scalable Egress

Unlike basic SNAT from load balancers, NAT Gateway provides **dedicated, scalable NAT** with support for **64,000 simultaneous ports per IP**, reducing SNAT port exhaustion issues.

#### Consistent Public IPs

All outbound traffic uses **your specified Public IP(s)** or Prefix, ensuring a consistent external IP footprint — useful for IP whitelisting and compliance.

#### Integrated with Virtual Network Subnets

Attach NAT Gateway to one or more **subnets**, and it automatically handles all egress traffic for those subnets without modifying route tables or NSGs.

---

### Use Cases

#### Secure Egress for VM and Container Workloads

Allow outbound Internet access for VMs, AKS nodes, App Services, or any workloads running in a subnet — while **blocking inbound traffic**.

#### Static IP for Whitelisting

Use NAT Gateway to ensure that all egress traffic originates from **known IP addresses**, which can be whitelisted by external vendors or services.

#### Scalable Web Scraping or API Polling

When hitting rate-limited APIs or outbound-intensive services, NAT Gateway ensures better port allocation and throughput than traditional outbound methods.

---

### Best Practices

- Use **Public IP Prefixes** for IP reputation stability and future-proofing.
- Monitor **SNAT port usage** with **Azure Monitor metrics** to avoid exhaustion.
- Don’t mix NAT Gateway with Basic Load Balancers or other outbound rules on the same subnet.
- Attach NAT Gateway to subnets that do not require inbound Internet access.

---

Azure NAT Gateway is the modern, reliable way to manage outbound connectivity in Azure — offering performance, security, and control for cloud-native applications.
