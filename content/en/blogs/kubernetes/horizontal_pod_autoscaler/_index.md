---
title: "Kubernetes Horizontal Pod Autoscaler"
linkTitle: "Horizontal Pod Autoscaler"
weight: 120
type: docs
tags: ["kubernetes", "autoscaling", "metrics", "workload"]
platform: kubernetes
---

{{< service-header >}}

The **Horizontal Pod Autoscaler (HPA)** in Kubernetes automatically scales the number of pod replicas in a deployment, statefulset, or replicaset based on real-time metrics like **CPU utilization**, **memory**, or custom metrics. It adjusts workloads dynamically to meet demand and optimize resource usage.

HPA is a native Kubernetes mechanism to ensure your apps scale out under load and scale in when idle.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of HPA

#### Dynamic Load Handling

With HPA, your application automatically responds to traffic spikes or CPU-intensive workloads. For example, if CPU usage exceeds a set threshold, HPA increases the number of pod replicas to maintain performance.

This makes applications resilient under variable loads without manual intervention.

#### Cost Efficiency Through Downscaling

When load decreases, HPA reduces the number of pods, saving compute resources. This helps optimize cloud costs and keeps your cluster lean, especially in dev/test environments or during off-peak hours.

#### Custom Metrics for Advanced Autoscaling

Beyond CPU and memory, HPA can use custom or external metrics (like queue length, HTTP request rate, or business KPIs) via the Kubernetes metrics pipeline. This allows you to scale based on what actually matters to your app.

---

### Use Cases

#### Traffic-Based Scaling for APIs and Services

Web APIs and microservices often experience fluctuating traffic. HPA keeps your services responsive by automatically scaling out during traffic surges and scaling in afterward.

#### Batch Job Load Management

If certain jobs cause CPU spikes, HPA helps maintain stability by increasing capacity temporarily — ensuring job performance remains steady across changing conditions.

#### Real-World Signals like Queue Depth

Using custom metrics (via Prometheus Adapter or External Metrics API), HPA can scale based on signals like Kafka topic depth or Redis queue length — ideal for real-time data systems.

---

### Best Practices

Use `requests.cpu` and `requests.memory` on your pods — HPA relies on these values.  
Use `readinessProbes` so that newly scaled pods are not considered ready until healthy.  
Don’t set `minReplicas: 0` unless your workload can truly tolerate downtime.  
Combine with Cluster Autoscaler to scale nodes when needed.  
Visualize and tune metrics using Prometheus or Kubernetes Dashboard.

---

The Horizontal Pod Autoscaler is essential for building self-adjusting, cost-efficient, and production-grade workloads in Kubernetes. It's a cornerstone of elastic cloud-native architecture.
