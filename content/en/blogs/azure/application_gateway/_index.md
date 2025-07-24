---
title: ""
linkTitle: "App Gateway"
weight: 30
type: docs
tags: ["azure", "application gateway", "load balancing", "waf"]
platform: azure
---

{{< service-header >}}

Azure Application Gateway is a **Layer 7 (HTTP/HTTPS)** load balancer that enables intelligent routing decisions based on URL, hostname, headers, and more. It acts as a **reverse proxy** and can be configured with a built-in **Web Application Firewall (WAF)** for enhanced security.

It is ideal for scenarios requiring advanced traffic control, TLS termination, session affinity, and secure web app delivery — especially in multi-region, multi-tier architectures.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of Azure Application Gateway

#### Layer 7 (Application Layer) Load Balancing

Unlike traditional load balancers that operate at the transport layer (Layer 4), Application Gateway understands the structure of HTTP requests. This allows routing based on **path-based rules**, **host headers**, or **cookies**, enabling scenarios like sending `/api` to one backend pool and `/static` to another.

#### Integrated Web Application Firewall (WAF)

App Gateway can be deployed with a **WAF SKU**, providing OWASP rule-based protection against common attacks like SQL injection, XSS, or cookie poisoning. It also supports custom rules for additional filtering and blocking.

#### SSL Termination and End-to-End TLS

You can configure SSL certificates at the gateway to offload TLS decryption from backend servers. Optionally, you can re-encrypt traffic for **end-to-end TLS**, ensuring secure communication throughout.

#### Autoscaling and Zone Redundancy

App Gateway can scale automatically based on traffic load and supports **Availability Zones**, ensuring high availability and fault tolerance across Azure regions.

#### URL-Based Routing and Multi-Site Hosting

You can host multiple domains behind a single gateway and route traffic based on the incoming host name. For example, both `api.example.com` and `app.example.com` can be served via the same gateway with different backend pools.

---

### Use Cases

#### Hosting Multiple Apps Behind a Single IP

You can serve different apps (e.g., web frontend, backend APIs, admin portal) behind one public IP using host-based routing — reducing IP consumption and simplifying DNS management.

#### WAF-Enabled Front Door for Web Applications

Place App Gateway in front of Azure App Services, AKS, or VMs to act as a secure WAF front door that filters malicious traffic before reaching your backend.

#### Blue-Green Deployments or A/B Testing

Use path-based routing rules to split traffic between old and new versions of an application for gradual rollout, feature toggling, or canary testing.

#### Centralized TLS Management

Terminate and manage SSL certificates at the gateway instead of individual backend servers — making rotation and renewal easier to automate and maintain.

---

### Best Practices

- Always deploy App Gateway in **Standard_v2 SKU** or **WAF_v2 SKU** for autoscaling and performance benefits.
- Use **custom health probes** for backend health validation, especially for dynamic or containerized backends.
- Enable **WAF in Detection mode** initially, and review logs before switching to **Prevention mode**.
- Use **Managed Identity** to securely access certificates stored in **Azure Key Vault**.
- When hosting multi-site apps, always configure **Host name matching** in listeners and routing rules.
- Monitor performance and access logs using **Azure Monitor** and **Diagnostic Settings**.

---

Azure Application Gateway provides fine-grained, secure, and scalable traffic control at the application layer — making it a foundational component for web app delivery and protection in Azure environments.
