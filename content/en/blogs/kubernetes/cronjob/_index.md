---
title: ""
linkTitle: "CronJob"
weight: 80
type: docs
tags: ["kubernetes", "scheduling", "job", "automation"]
platform: kubernetes
---

{{< service-header >}}

A **CronJob** in Kubernetes is a scheduled job that runs periodically based on a **cron expression**. It’s used for automating recurring tasks like backups, cleanup scripts, report generation, or health checks — all within the Kubernetes ecosystem.

CronJobs extend the `Job` API by adding a scheduling layer, ensuring that jobs are launched at precise, recurring times as defined by the user.

---

### Topics

{{< render-topic-links >}}

---

### Benefits of CronJob

#### Declarative Scheduled Automation

With CronJobs, you define _when_ a job should run using familiar cron syntax (`"0 0 * * *"` for daily runs). Kubernetes takes care of launching the job at the right time, retrying on failure, and managing the job lifecycle.

This makes it ideal for automating routine operations without requiring external schedulers.

#### Scalable and Cluster-Native

CronJobs are fully managed by the Kubernetes control plane, meaning they scale well and fit naturally into your cluster. Jobs are scheduled like any other workload and run in containers, allowing you to write and deploy scripts in any language or runtime.

For example, a containerized Python script can be run weekly to clean up stale data from a database.

#### History Tracking and Lifecycle Control

You can configure how many successful or failed job runs to retain, giving you visibility into past executions and outcomes. This aids in debugging and monitoring.

---

### Use Cases

#### Nightly Database Backups

A CronJob can be scheduled to back up a PostgreSQL or MySQL database every night at midnight. The job might compress and upload the backup to S3, providing automated, recurring disaster recovery.

#### Log Rotation and Cleanup

To manage disk space and reduce clutter, CronJobs can periodically delete old log files, archive rotated logs, or clean up expired Kubernetes resources like pods or completed jobs.

#### Regular Health and Metrics Checks

Teams can run sanity checks or metrics collectors at fixed intervals using CronJobs. This is especially useful for legacy systems or services where real-time observability is not yet built-in.

---

### Best Practices

Always specify `.startingDeadlineSeconds` to prevent missed job runs.  
Set `.concurrencyPolicy` to `Forbid` or `Replace` to avoid overlapping executions.  
Use `.successfulJobsHistoryLimit` and `.failedJobsHistoryLimit` to retain relevant job logs.  
Ensure containerized jobs complete quickly and exit cleanly.  
Avoid scheduling too many high-frequency jobs that can overload the cluster.

---

CronJobs offer a reliable and native way to schedule recurring tasks inside Kubernetes. Whether you're backing up data, performing cleanup, or executing batch logic, CronJob provides the flexibility and automation needed to manage time-based operations efficiently.
