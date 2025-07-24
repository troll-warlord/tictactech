---
title: "Kubernetes Ingress"
linkTitle: "Ingress"
weight: 130
type: docs
tags: ["kubernetes", "networking", "reverse-proxy", "loadbalancer"]
platform: kubernetes
---

{{< service-header >}}

A **Kubernetes Ingress** is an API object that manages **external HTTP and HTTPS traffic** to services within the cluster. It provides routing rules, TLS termination, and host/path-based routing, acting as a smarter and more efficient alternative to exposing services via `LoadBalancer` or `NodePort`.

Ingress sits at the **application layer (Layer 7)** and typically works with ingress controllers like NGINX, Traefik, or cloud-native controllers.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of Ingress

#### Centralized Traffic Management

Ingress consolidates traffic routing rules into a single configuration point. Instead of exposing each service individually, you can route multiple apps using one load balancer — based on path, subdomain, or HTTP headers.

This reduces complexity and cost.

#### TLS Termination and Security

Ingress supports TLS certificates for secure HTTPS connections and lets you terminate SSL at the ingress level — keeping your internal services simple and unencrypted.

You can use self-managed certs or integrate with Let’s Encrypt for automated provisioning.

#### Custom Routing Logic

Using annotations and custom rules, Ingress can handle complex routing scenarios — redirecting URLs, rewriting paths, enforcing authentication, rate limiting, and more. Ingress is highly extensible through its controller.

---

### Use Cases

#### Hosting Multiple Services on One Domain

With Ingress, you can route `/api` to your backend, `/admin` to your dashboard, and `/` to your frontend — all from a single DNS entry.

#### Public-Facing TLS with Cert-Manager

Automate HTTPS provisioning using cert-manager and Let’s Encrypt. Ingress handles certificate renewal, secure routing, and HTTP-to-HTTPS redirects.

#### Multi-Tenant Applications

Ingress allows per-tenant subdomain or path-based routing, enabling SaaS-style isolation (e.g., `tenant1.example.com`, `tenant2.example.com`).

---

### Best Practices

Use a robust ingress controller like NGINX or Traefik with autoscaling.  
Avoid wild wildcard rules that may lead to unintended routing behavior.  
Use cert-manager for automated TLS lifecycle management.  
Enable health checks and observability for your ingress controller.  
Secure ingress endpoints with WAF, rate-limiting, or external auth if exposed to internet.

---

Ingress is the gateway to your Kubernetes cluster — combining load balancing, reverse proxy, and SSL termination into one elegant solution. It helps expose your apps reliably and securely to the outside world.
