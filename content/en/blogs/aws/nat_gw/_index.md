---
title: ""
linkTitle: "NAT Gateway"
weight: 40
type: docs
tags: ["aws", "nat gateway", "networking", "vpc", "egress", "internet access"]
platform: aws
---

{{< service-header >}}

A NAT (Network Address Translation) Gateway is a managed AWS service that enables instances in a **private subnet** to access the internet **outbound only**, without exposing them to inbound internet traffic. This separation of responsibilities allows you to maintain a secure networking model where sensitive backend systems remain isolated while still being able to reach external services as needed.

For example, an EC2 instance running in a private subnet (e.g., a database or internal API service) can use a NAT Gateway to pull security patches, connect to public APIs, or download software packages — all without making the instance publicly accessible.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of NAT Gateway

#### Simplified Outbound Connectivity for Private Subnets

Instead of managing your own NAT instance (which requires patching, scaling, and monitoring), NAT Gateway offers a **fully managed**, resilient solution that handles all outbound traffic from private subnets. For example, if you have a backend EC2 instance in a private subnet that needs to install packages from an external repository, NAT Gateway ensures seamless access to the internet without exposing your instance to inbound threats.

#### High Availability and Scalability

NAT Gateway is designed to be **highly available within an Availability Zone**, and it automatically scales to accommodate up to 45 Gbps of throughput. This ensures consistent performance even in high-traffic environments. Imagine a fleet of application servers downloading large models or patch sets — NAT Gateway will manage the bandwidth dynamically without any manual intervention.

#### Enhanced Security Posture

By default, private subnet resources using a NAT Gateway cannot be reached from the internet, significantly reducing the attack surface. You retain **complete control via route tables**, security groups, and NACLs. For instance, your RDS database might need to contact an external payment service — NAT Gateway allows that without exposing the database publicly.

---

### Use Cases

#### Private EC2 Instances Downloading OS Updates

In many architectures, EC2 instances in private subnets host core services like app backends, microservices, or schedulers. These systems often need to pull OS updates, language runtimes, or container images from the internet. A NAT Gateway allows this while maintaining their **non-public** nature, ensuring they aren’t reachable from the outside world.

#### Accessing External APIs from Secure Internal Systems

A private subnet EC2 instance or Lambda function may need to interact with third-party APIs — for example, fetching stock data, sending metrics to an external observability tool, or integrating with a SaaS platform. NAT Gateway enables this communication while preserving **network isolation** from the public internet.

---

### Best Practices

Create one NAT Gateway **per Availability Zone** to ensure resilience across zones.  
Use **route tables** to tightly control which subnets use the NAT Gateway.  
Pair NAT Gateway with **CloudWatch metrics and VPC Flow Logs** for visibility.  
Avoid using NAT Gateway for high-volume content downloads — consider alternatives like **S3 VPC endpoints** when accessing AWS services.  
Restrict egress traffic using **security groups**, **NACLs**, or **egress-only IGWs** where appropriate.

---

NAT Gateway plays a critical role in modern cloud network architecture. It provides a **clean, secure bridge** between private subnets and the internet — allowing your workloads to operate effectively without compromising on isolation or governance. Whether it’s patching servers, calling third-party APIs, or downloading packages, NAT Gateway ensures smooth and safe outbound access.
