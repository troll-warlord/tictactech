---
title: ""
linkTitle: "Direct Connect"
weight: 76
type: docs
tags: ["aws", "network", "dx", "hybrid", "connectivity"]
platform: aws
---

{{< service-header >}}

**AWS Direct Connect (DX)** provides a **dedicated, private network connection** between your on-premises data center (or co-location) and AWS. It offers **lower latency**, **higher throughput**, and **consistent performance** compared to public internet links.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of Direct Connect

#### Dedicated Network Path

Avoid the variability of the internet by routing traffic over **private fiber links** for consistent performance.

#### Reduced Latency & Higher Bandwidth

Supports **1 Gbps to 100 Gbps** connections — ideal for large-scale data transfers, backups, and real-time applications.

#### Hybrid Cloud Optimization

Integrate AWS VPCs directly into your **on-premises infrastructure** using **Virtual Interfaces (VIFs)**.

#### Cost Efficient

Reduced **data transfer rates** compared to internet egress pricing over long-term usage.

---

### Use Cases

- Data center to AWS communication with low jitter and predictable performance.
- Backup or DR scenarios requiring high-speed secure replication.
- Migration of petabyte-scale workloads from on-prem to AWS.
- Private access to AWS services from within a co-location.

---

### Best Practices

- Use **Link Aggregation Groups (LAG)** for redundancy and throughput.
- Create **separate VIFs** for public and private services.
- Combine with **Transit Gateway** for multi-VPC, multi-region routing.
- Monitor with **CloudWatch** and configure failover using **VPN as backup**.

---

AWS Direct Connect is the go-to choice for enterprises building **hybrid cloud architectures** with secure and reliable network performance.
