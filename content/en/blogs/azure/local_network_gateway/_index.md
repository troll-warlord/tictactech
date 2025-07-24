---
title: ""
linkTitle: "Local Network Gateway"
weight: 40
type: docs
tags: ["azure", "local network gateway", "vpn", "hybrid connectivity"]
platform: azure
---

{{< service-header >}}

**Azure Local Network Gateway** represents your on-premises VPN device and network in Azure. It’s a crucial component when configuring **site-to-site VPN** connections between your Azure Virtual Network and on-premises infrastructure.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of Azure Local Network Gateway

#### Hybrid Connectivity

Acts as the Azure-side representation of your on-premises VPN appliance, allowing Azure to initiate and maintain a secure IPsec VPN tunnel.

#### Customizable IP Configuration

Supports specifying public IP of your on-prem VPN device, BGP configuration, and the on-prem address prefixes that Azure should route to.

#### BGP Support

Enables dynamic route exchange with your on-prem environment when used with a compatible VPN device and configuration.

#### Integration with VPN Gateway

Works in tandem with Azure VPN Gateway to complete the site-to-site VPN setup for hybrid cloud environments.

---

### Use Cases

#### Site-to-Site VPN Connections

Establish secure communication between your Azure virtual networks and your corporate datacenter or branch offices.

#### Multi-Site VPN Architecture

In scenarios involving multiple remote offices, each with its own on-prem VPN device, Local Network Gateways are configured for each to allow full mesh connectivity via Azure.

#### Disaster Recovery and Migration

Enable low-latency and secure connectivity to move data or applications between Azure and on-premises during DR or migration planning.

---

### Best Practices

- Ensure the on-prem VPN device supports **IPsec/IKE** protocols and is on Azure’s [VPN device compatibility list](https://learn.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-about-vpn-devices).
- Use **BGP** where possible to simplify route management.
- Keep IP address prefixes updated in the Local Network Gateway to avoid route mismatches.
- Monitor VPN connection health via **Azure Network Watcher** and alerts.
- When IP changes occur on your on-prem VPN device, update the gateway IP promptly.

---

Azure Local Network Gateway plays a vital role in hybrid architectures, bridging the gap between on-prem infrastructure and cloud environments with secure, reliable VPN connectivity.
