---
title: ""
linkTitle: "Versioning"
weight: 20
type: docs
tags: ["aws", "s3", "versioning", "object versioning"]
platform: aws
---

### S3 Versioning

Amazon S3 **versioning** is a feature that lets you preserve, retrieve, and restore every version of every object stored in a bucket. When versioning is enabled, S3 automatically stores a **new version** of the object every time it is modified or deleted — rather than overwriting or removing it.

This adds an extra layer of data protection and recovery, especially against **accidental deletes or unintentional overwrites**.

---

### How Versioning Works

- Versioning is **enabled at the bucket level**.
- Once enabled, every object uploaded or modified will get a unique **version ID**.
- Deleting an object doesn’t remove it — instead, a **delete marker** is added.
- You can **retrieve or restore** previous versions anytime.

---

### Key Characteristics

- **Version IDs** are unique identifiers for each version of an object.
- **Null version**: Objects uploaded **before versioning is enabled** have a null version.
- Versioning cannot be fully disabled — only suspended once enabled.
- Supports **lifecycle rules** to manage older versions and clean up delete markers.

---

### Benefits of S3 Versioning

1. **Protection from Accidental Deletes**

   - Deleting an object only adds a delete marker.
   - All previous versions remain recoverable.

2. **Safe Object Updates**

   - Every PUT request creates a new version.
   - Original versions remain intact and restorable.

3. **Audit and Change Tracking**

   - Keep track of changes to critical data over time.
   - Useful in legal or compliance scenarios.

4. **Easy Integration with Lifecycle Rules**
   - Configure rules to expire older versions or transition them to lower-cost storage.

---

### Real-World Use Cases

- **Backup and Recovery**

  - Protect user uploads, logs, documents, and configs by keeping a history of changes.

- **Enterprise Compliance**

  - Ensure records remain unchanged and tamper-proof — especially in regulated industries.

- **Data Science and Experimentation**

  - Maintain multiple dataset versions to track changes in preprocessing or labeling.

- **Application Rollbacks**
  - Roll back to previous object versions in case of bad deployments or corrupted data.

---

### How to Enable Versioning

You can enable versioning through:

1. **AWS Management Console**

   - Go to the bucket.
   - Select **Properties** > **Bucket Versioning** > Enable.

2. **AWS CLI**

```bash
aws s3api put-bucket-versioning \
  --bucket my-bucket-name \
  --versioning-configuration Status=Enabled
```

3. **Infrastructure-as-Code (e.g., Terraform)**

```hcl
resource "aws_s3_bucket_versioning" "example" {
    bucket = aws_s3_bucket.my_bucket.id

    versioning_configuration {
      status = "Enabled"
    }
}
```
