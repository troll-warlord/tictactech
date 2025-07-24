---
title: ""
linkTitle: "Elastic Load Balancing"
weight: 78
type: docs
tags: ["aws", "elb", "load balancer", "network", "scaling"]
platform: aws
---

{{< service-header >}}

**AWS Elastic Load Balancing (ELB)** automatically distributes incoming traffic across multiple **targets** (like EC2 instances, containers, IPs), ensuring high **availability** and **fault tolerance**.

---

### Topics

{{< render-topic-links >}}

---

### Types of Load Balancers

- **Application Load Balancer (ALB):** HTTP/HTTPS, advanced routing, path-based rules.
- **Network Load Balancer (NLB):** TCP/UDP, ultra-low latency, static IPs.
- **Gateway Load Balancer (GWLB):** For deploying third-party virtual appliances.
- **Classic Load Balancer (CLB):** Legacy; limited features.

---

### Benefits

- **High availability** across AZs.
- **Auto scaling** compatibility.
- **SSL termination** support.
- **Health checks** for graceful failover.

---

### Use Cases

- Routing API traffic to containers via ALB.
- Distributing TCP traffic with low latency using NLB.
- Offloading SSL from applications.
- Deploying firewalls via GWLB in security architectures.

---

### Best Practices

- Use **ALB** for modern web applications (layer 7).
- Use **NLB** for high-throughput, low-latency workloads.
- Enable **access logs** for debugging and analytics.
- Configure **target group health checks** precisely.
