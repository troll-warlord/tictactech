---
title: ""
linkTitle: "Key Management Service"
weight: 80
type: docs
tags: ["aws", "security", "encryption", "kms", "key management"]
platform: aws
---

{{< service-header >}}

**AWS KMS** is a managed service for creating and controlling **encryption keys** used to secure your data across AWS services and custom apps.

---

### Topics

{{< render-topic-links >}}

---

### Core Concepts

- **Customer Master Keys (CMKs):** Used to encrypt data keys.
- **Data Keys:** Used by services like S3 or EBS to encrypt actual data.
- **Automatic Key Rotation:** Supported for AWS-managed keys.
- **Envelope Encryption:** Encrypting data with a data key that is encrypted with a CMK.

---

### Benefits

- **Integrated with 50+ AWS services** (S3, EBS, RDS, Lambda, etc.).
- Centralized **key lifecycle management**.
- **FIPS 140-2 compliant**, suitable for regulated industries.
- Supports **CloudTrail logging** for audit.

---

### Use Cases

- Encrypt S3 buckets and EBS volumes.
- Encrypt database columns using customer-managed keys.
- Control access to sensitive data via key policies and IAM.

---

### Best Practices

- Prefer **customer-managed CMKs** for audit control.
- Enable **automatic key rotation**.
- Restrict key usage via **key policies**.
- Use **grants** for short-term, controlled access.
- Monitor key usage via **CloudTrail** and **CloudWatch**.
