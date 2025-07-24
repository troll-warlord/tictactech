---
title: ""
linkTitle: "Lambda"
weight: 81
type: docs
tags: ["aws", "lambda", "serverless", "compute", "functions"]
platform: aws
---

{{< service-header >}}

**AWS Lambda** lets you run code without provisioning or managing servers. You just upload your function, and Lambda runs it in response to events, auto-scaling as needed.

---

### Topics

{{< render-topic-links >}}

---

### Key Features

- **Event-driven execution** via triggers (S3, API Gateway, SQS, etc.).
- **Automatic scaling** based on request volume.
- **Pay-per-use**: Only for execution time.
- Built-in **retry logic** and **dead-letter queues**.

---

### Benefits

- No server maintenance.
- Easily integrates with AWS ecosystem.
- Highly scalable for asynchronous tasks.
- Supports major languages (Python, Node.js, Java, Go, etc.).

---

### Use Cases

- Backend APIs (with API Gateway).
- Real-time file processing (e.g., S3 image resizing).
- Scheduled jobs (like CRON via EventBridge).
- Event processing from SQS, DynamoDB, or Kinesis.

---

### Best Practices

- Keep functions **stateless and small**.
- Use **layers** for shared dependencies.
- Monitor with **CloudWatch Logs and X-Ray**.
- Limit execution time and memory for efficiency.
- Avoid cold starts with **provisioned concurrency** if needed.
