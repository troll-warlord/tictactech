---
title: ""
linkTitle: "Secrets Manager"
weight: 83
type: docs
tags: ["aws", "security", "secrets", "key management", "database credentials"]
platform: aws
---

{{< service-header >}}

**AWS Secrets Manager** lets you securely store, retrieve, and rotate **database credentials**, API keys, and other secrets.

---

### Topics

{{< render-topic-links >}}

---

### Key Features

- Automatic **rotation** for RDS and other secrets.
- **Encryption at rest** with AWS KMS.
- Fine-grained **IAM permissions**.
- Integrated with **Lambda** for custom rotation.

---

### Benefits

- Centralized secrets storage.
- Secure **audit trail** via CloudTrail.
- Removes hardcoding credentials in apps.
- Version control and staging labels.

---

### Use Cases

- Store and rotate DB passwords.
- Secure access tokens for external APIs.
- Inject secrets into Lambda or ECS tasks at runtime.

---

### Best Practices

- Enable **auto-rotation** where possible.
- Use **resource-based policies** to restrict access.
- Rotate secrets manually if auto-rotation isn’t supported.
- Encrypt using **customer-managed KMS keys** for full control.
