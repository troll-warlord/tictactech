---
title: ""
linkTitle: "Storage Classes"
weight: 30
type: docs
tags: ["aws", "s3", "storage classes", "tiered storage"]
platform: aws
url: storage-classes
# build:
#   render: false
---

{{< topic-header >}}

## Storage Classes

S3 offers a range of storage classes to support different use cases and access patterns.

### Key Classes

- **S3 Standard**: Frequent access
- **S3 Intelligent-Tiering**: Automatically optimizes costs
- **S3 Glacier & Deep Archive**: Long-term archival
- **S3 One Zone-IA**: Infrequent access in a single AZ

### Use Cases

- Optimize storage costs by aligning data usage patterns with the right storage class.
- Automate transitions using lifecycle rules.
