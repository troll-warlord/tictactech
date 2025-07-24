---
title: "Kubernetes Custom Resource Definition (CRD)"
linkTitle: "Custom Resource Definition"
weight: 90
type: docs
tags: ["kubernetes", "crd", "controller", "extension", "api"]
platform: kubernetes
---

{{< service-header >}}

A **Custom Resource Definition (CRD)** in Kubernetes allows users to define their own API objects — extending the Kubernetes API with domain-specific resources. CRDs are the foundation of the Kubernetes extensibility model and enable the creation of custom controllers and operators that behave like native Kubernetes resources.

Using CRDs, teams can define custom objects such as `BackupPolicy`, `Database`, `MLJob`, or `IngressRoute` with their own schema, lifecycle, and automation logic — all managed declaratively just like built-in objects (`Pod`, `Service`, etc.).

---

### Topics

{{< render-topic-links >}}

---

### Benefits of CRD

#### Extends Kubernetes Without Modifying Core

CRDs allow developers to introduce new resource types into the cluster without having to modify or rebuild Kubernetes itself. Once a CRD is installed, users can interact with it using `kubectl`, apply YAML files, or integrate it into GitOps flows — just like standard resources.

For example, after installing a `BackupPolicy` CRD, users can run `kubectl get backuppolicies` to view and manage their own backup definitions.

#### Enables Domain-Specific APIs and Automation

CRDs form the basis for building Kubernetes **Operators** — custom controllers that watch for changes in these custom resources and act accordingly. This enables complex domain logic to be encoded into reusable Kubernetes-native APIs.

A `Database` CRD, for instance, might trigger provisioning of a cloud database, manage failover, backups, and updates — all through declarative YAML manifests.

#### Native Integration with RBAC and Validation

CRDs automatically integrate with Kubernetes features like:

- **RBAC**: You can define fine-grained access to custom resources.
- **Admission controllers**: Use validation webhooks or OpenAPI schemas.
- **Events and status fields**: Just like standard resources, CRDs support `.status`, enabling status reporting and error feedback.

---

### Use Cases

#### Building a Kubernetes Operator

Operators rely on CRDs to define their custom domain logic. For example, the Prometheus Operator defines CRDs like `ServiceMonitor` and `AlertmanagerConfig`, enabling users to configure monitoring entirely through Kubernetes resources.

#### Managing External or Complex Infrastructure

CRDs can be used to declaratively manage cloud services like S3 buckets, DNS records, or IAM roles by syncing desired state to the actual infrastructure via controllers. This allows teams to treat external systems as native Kubernetes objects.

#### Internal Platform APIs

Platform teams often create internal CRDs to expose higher-level abstractions — like `AppDeployment` or `TenantQuota`. These encapsulate complex deployments or policies behind simplified APIs for developers to consume.

---

### Best Practices

Define a validation schema to ensure custom resources are predictable.  
Keep CRD names consistent and follow plural naming conventions (e.g., `databases.example.com`).  
Avoid overly broad permissions in RBAC rules for custom resources.  
Separate CRD management from application logic — use Helm, Kustomize, or GitOps to version CRDs.  
Use `.status` fields and conditions for clear lifecycle visibility and health reporting.

---

Custom Resource Definitions are at the heart of Kubernetes extensibility. They transform Kubernetes from an orchestration engine into a platform framework — enabling teams to define their own APIs, build powerful automation, and treat infrastructure as code in a truly cloud-native way.
