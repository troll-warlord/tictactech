---
title: ""
linkTitle: "Identity and Access Management"
weight: 79
type: docs
tags: ["aws", "iam", "security", "permissions", "roles", "access control"]
platform: aws
---

{{< service-header >}}

**AWS IAM** helps securely control access to AWS services and resources. It lets you define **who** can access **what**, under **what conditions**.

---

### Topics

{{< render-topic-links >}}

---

### Core Concepts

- **Users:** AWS identities tied to individuals.
- **Groups:** Logical collections of users with shared permissions.
- **Roles:** Temporary credentials with scoped access — used by services or federated users.
- **Policies:** JSON-based permission documents (inline or managed).

---

### Benefits

- Centralized **access control**.
- **Granular permissions** using IAM policies.
- **Temporary credentials** for EC2, Lambda, ECS via roles.
- **Multi-Factor Authentication (MFA)** for added security.

---

### Use Cases

- Giving developers access to S3 and CloudWatch only.
- Assigning a role to EC2 for S3 access without keys.
- Federating users from Active Directory or Okta.
- Creating cross-account access roles.

---

### Best Practices

- **Follow least privilege**: Give only required access.
- **Use roles** instead of long-term credentials.
- Rotate access keys regularly.
- Enable **MFA** on privileged accounts.
- Review **IAM Access Analyzer** findings for unused permissions.
