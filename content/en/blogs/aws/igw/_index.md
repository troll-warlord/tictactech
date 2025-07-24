---
title: ""
linkTitle: "Internet Gateway"
weight: 30
type: docs
tags: ["aws", "networking", "internet", "vpc"]
platform: aws
---

{{< service-header >}}

An Internet Gateway (IGW) is a horizontally scaled, redundant, and highly available AWS VPC component that enables communication between instances in your VPC and the internet. It acts as a target for route table entries and performs network address translation for public IPs.

IGW is essential for any resource that needs to be accessed publicly or needs to initiate outbound traffic to the internet while being directly reachable.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of Internet Gateway

#### Public Connectivity for VPC Resources

By attaching an IGW to your VPC and adding route table entries, EC2 instances with public IPs can send and receive traffic from the internet. This is essential for services like public web servers, load balancers, or bastion hosts.

#### Scalable and Redundant

Internet Gateway is managed by AWS and designed for high availability. You don’t need to provision or scale it manually — it handles internet-bound traffic from thousands of instances simultaneously.

---

### Use Cases

#### Hosting Public Web Applications

A typical three-tier architecture includes a public-facing EC2 instance (or ALB) that must be reachable over the internet. IGW enables this access while other backend resources remain private.

#### SSH Access via Bastion Hosts

To manage private EC2 instances securely, organizations often set up a bastion host in a public subnet with an IGW for remote access. Admins can SSH into this host and then jump into private instances.

---

### Best Practices

Attach only one IGW per VPC.  
Use public subnets for resources that need internet access.  
Ensure route tables and security groups allow outbound/inbound traffic appropriately.  
Avoid assigning public IPs unless required — use NAT for egress from private subnets.

---

An Internet Gateway is a simple yet critical component in any AWS network architecture. It serves as the bridge between your cloud workloads and the public internet, enabling secure and scalable access for external-facing applications.
