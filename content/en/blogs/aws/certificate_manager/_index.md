---
title: ""
linkTitle: "Certificate Manager"
weight: 72
type: docs
tags: ["aws", "acm", "ssl", "tls", "security", "certificate"]
platform: aws
---

{{< service-header >}}

**AWS Certificate Manager (ACM)** provides free **SSL/TLS certificates** for use with AWS services, enabling **secure communications** over HTTPS and encryption in transit — without manual certificate management.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of ACM

#### Free and Managed SSL/TLS Certificates

Issue **public or private certificates** at no cost. ACM handles renewals and lifecycle management automatically.

#### Seamless Integration

Works out-of-the-box with **ALB, CloudFront, API Gateway, and ELB** for HTTPS-secured traffic.

#### Centralized Certificate Store

Manage all certificates across accounts and services from a **single dashboard**, including imported ones.

#### Automatic Renewal

Avoid downtime or security risks with **automated renewal and deployment** of certificates.

---

### Use Cases

- Securing **public websites**, APIs, and content distribution via HTTPS.
- Enabling **mutual TLS** with Private CA and internal applications.
- Managing certificates for **multi-tenant SaaS** apps across custom domains.

---

### Best Practices

- Use **DNS validation** for domain ownership to enable automatic renewals.
- Rotate certificates before expiration when using imported ones.
- Enable **CloudTrail logs** for certificate operations.
- Combine ACM with **AWS WAF and Shield** for layered security.

---

ACM simplifies secure web application delivery by handling the complexity of certificate management. Secure by default, without the operational headache.
