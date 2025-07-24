---
title: ""
linkTitle: "DaemonSet"
weight: 100
type: docs
tags: ["kubernetes", "scheduling", "workload", "infra"]
platform: kubernetes
---

{{< service-header >}}

A **DaemonSet** in Kubernetes ensures that a specific pod is **running on every (or selected) node** in a cluster. It's typically used for deploying background system services like log collectors, monitoring agents, or storage daemons that must be present on all nodes.

When a new node is added to the cluster, the DaemonSet controller automatically schedules the DaemonSet pod on it — making DaemonSet ideal for cluster-wide infrastructure agents.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of DaemonSet

#### Cluster-Wide Uniform Workload Distribution

DaemonSets guarantee that one instance of the pod runs on each node, providing uniform behavior across the cluster. This is essential for agents that need host-level access, such as `fluentd`, `promtail`, or node-level backup tools.

By ensuring every node has a copy of the workload, DaemonSets help maintain consistent observability, security, and data collection.

#### Automatic Handling of Node Additions

As new nodes join the cluster, DaemonSet pods are automatically scheduled onto them without any user intervention. This simplifies operational tasks and ensures your monitoring, logging, or policy enforcement is applied uniformly.

#### Fine-Grained Targeting with Node Selectors and Taints

DaemonSets can be configured to run only on specific types of nodes by using labels, taints, or affinity rules. For instance, you might run a GPU monitoring DaemonSet only on nodes labeled with `gpu=true`.

---

### Use Cases

#### Log and Metrics Collection

Logging agents like Fluentd, Logstash, or vector are often deployed as DaemonSets to collect container logs from every node and forward them to a central store like Elasticsearch or Loki.

#### Network and Security Enforcement

Tools like Calico or Cilium use DaemonSets to apply network policies, manage CNI plugins, or enforce firewall rules uniformly across all nodes.

#### Node-Level Backups and Volume Management

Backup agents or CSI drivers often need host-level access to volumes. DaemonSets are ideal for placing such components on every node to handle disk mounting, backup orchestration, or encryption.

---

### Best Practices

Use tolerations and affinity rules to restrict DaemonSets to relevant nodes.  
Avoid scheduling user workloads using DaemonSets — reserve it for infrastructure components.  
Set resource requests/limits to avoid node overload.  
Use `RollingUpdate` strategy for safe updates (since 1.6+).  
Monitor with metrics and alerts to ensure all expected nodes are running the DaemonSet.

---

DaemonSets are a critical construct for deploying per-node infrastructure in Kubernetes. They provide consistency, automation, and control for workloads that need to run everywhere, and are foundational for observability, networking, and security in modern clusters.
