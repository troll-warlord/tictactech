---
title: ""
linkTitle: "Site-to-Site VPN"
weight: 82
type: docs
tags: ["aws", "vpn", "hybrid", "site-to-site", "connectivity", "ipsec"]
platform: aws
---

{{< service-header >}}

**AWS Site-to-Site VPN** connects your on-premises network or other cloud environments to AWS using secure **IPSec tunnels** over the internet.

---

### Topics

{{< render-topic-links >}}

---

### Key Features

- Two **redundant tunnels** per VPN connection.
- Integrates with **Virtual Private Gateway** or **Transit Gateway**.
- Supports **static or BGP routing**.
- Encrypted, secure tunnels.

---

### Benefits

- Quick hybrid cloud connectivity.
- No need for Direct Connect for simple setups.
- Works with most on-prem VPN devices.

---

### Use Cases

- Extend on-prem data centers to AWS.
- Backup network path to AWS alongside Direct Connect.
- Secure partner connectivity.

---

### Best Practices

- Use **BGP** for dynamic routing and failover.
- Monitor tunnel health with **CloudWatch**.
- Combine with **Direct Connect** for reliability.
- Enable **CloudHub** for connecting multiple sites.
