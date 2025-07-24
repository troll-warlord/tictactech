---
title: ""
linkTitle: "Network Policy"
weight: 180
type: docs
tags: ["kubernetes", "network", "security", "isolation", "policy"]
platform: kubernetes
---

{{< service-header >}}

**NetworkPolicy** in Kubernetes defines **rules for traffic flow** at the IP level between pods and/or namespaces. It acts as a virtual firewall, specifying **who can talk to whom** and over which ports/protocols.

By default, pods are non-isolated — they accept traffic from any source. Once a NetworkPolicy is applied, only explicitly allowed traffic is permitted.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of NetworkPolicy

#### Pod-Level Security

Restrict incoming and outgoing traffic to/from specific pods. This minimizes the blast radius in case of a breach.

#### Zero Trust Architecture

Enforces **least privilege** by only allowing explicitly permitted communications between workloads.

#### Segmentation by Namespace or Label

Policies can filter traffic based on **pod selectors**, **namespaces**, and even **IP blocks** — giving granular control over communication.

#### Works Across CNIs

NetworkPolicy works with CNI plugins like Calico, Cilium, Weave, etc. (not all CNIs support them fully — be sure to check compatibility).

---

### Use Cases

- Allowing only frontend pods to talk to backend
- Blocking cross-namespace traffic
- Whitelisting access to a database pod
- Egress restrictions to prevent pods from accessing the internet

---

### Best Practices

- Label pods clearly to simplify NetworkPolicy creation.
- Always test policies in non-prod before rollout.
- Combine ingress and egress policies for full control.
- Start with a default deny-all policy and allow only what’s needed.
- Use a CNI that fully supports NetworkPolicy for enforcement.

---

NetworkPolicies are your **security perimeter** inside the cluster. With careful design, you can build internal firewalls that restrict access just like in traditional networks.
