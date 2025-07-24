---
title: ""
linkTitle: "ConfigMap"
weight: 70
type: docs
tags: ["kubernetes", "configuration", "manifest", "declarative"]
platform: kubernetes
---

{{< service-header >}}

A **ConfigMap** in Kubernetes is an API object used to store non-sensitive configuration data as key-value pairs. It allows application configuration to be externalized from container images, enabling separation of config and code — a core principle of modern cloud-native architecture.

ConfigMaps are especially useful for injecting environment-specific settings, URLs, flags, or app-level parameters without needing to rebuild or redeploy your application containers.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of ConfigMap

#### Decouples Configuration from Application Logic

By separating runtime configuration from the container image, you can use the same Docker image across different environments (dev, staging, prod) simply by referencing different ConfigMaps. This reduces operational complexity and promotes consistency.

For example, an app may read database URLs or feature flags from a ConfigMap instead of hardcoding them.

#### Easy to Mount or Inject

ConfigMaps can be exposed to pods in multiple ways — as environment variables, mounted volumes, or directly read through the Kubernetes API. This provides flexibility depending on the application’s design or runtime requirements.

For instance, a Java app might read from environment variables, while a Go service might read directly from files mounted via a ConfigMap volume.

#### Supports Declarative Configuration Management

Because ConfigMaps are standard Kubernetes resources, they can be stored as YAML files, versioned in Git, and applied using GitOps workflows. This makes application configuration reproducible, traceable, and auditable.

---

### Use Cases

#### Environment-Specific App Settings

Different environments often require different values — such as API base URLs, log levels, or third-party credentials (non-sensitive). ConfigMaps let you define these separately without rebuilding your images.

#### Feature Toggles and Runtime Flags

Applications can enable or disable features dynamically using values pulled from a ConfigMap. This allows safer deployments where new features can be toggled without restarting services.

#### Injecting Config for Sidecars or Init Containers

Sidecars like logging agents or service mesh proxies often rely on user-defined configuration. A ConfigMap can be mounted as a file path, allowing complex structured config (e.g., JSON, YAML) to be read by the sidecar.

---

### Best Practices

Avoid putting secrets in ConfigMaps — use Secrets for sensitive data.  
Use a consistent naming convention per environment and namespace.  
Validate ConfigMap contents before applying to avoid runtime errors.  
Leverage `kubectl --dry-run` and GitOps pipelines to test and version changes.  
Mount large or structured configs (like JSON) as files rather than env vars.

---

ConfigMap provides a clean, declarative, and environment-agnostic way to manage configuration in Kubernetes. It plays a foundational role in building portable, repeatable, and scalable cloud-native workloads.
