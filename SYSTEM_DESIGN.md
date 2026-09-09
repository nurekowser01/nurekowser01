<div align="center">

### 🚀 **[DevOps & Cloud](README.md)** ︱ 💻 **[Software Engineering](SOFTWARE_DEV.md)** ︱ 🏛️ **[System Design](SYSTEM_DESIGN.md)** ︱ 🧠 **[DSA & Algorithms](DSA.md)**

</div>

---

# 🏛️ System Design & Architecture

Designing distributed systems that are highly available, fault-tolerant, and horizontally scalable. 

## Architectural Philosophy
- **No Single Point of Failure (SPOF):** Redundancy across all critical paths.
- **Loose Coupling:** Microservices and event-driven architectures to prevent cascading failures.
- **Data Consistency vs. Availability:** Understanding CAP theorem tradeoffs and applying Eventual Consistency where appropriate.
- **Scale-Out over Scale-Up:** Designing stateless application layers that can horizontally scale on demand.

---

## 📐 System Architecture Case Studies

*(Note: These link to dedicated repositories where the architecture is mapped out via Mermaid diagrams, ADRs, and load testing scripts.)*

### 1. [Design: Global Rate Limiting Service](#)
**Focus:** High Throughput, Low Latency, Distributed Synchronization
- Designed a distributed API rate limiter using Redis (Token Bucket Algorithm).
- Addressed race conditions in a multi-node environment using Lua scripting.
- Handled geographic latency by deploying edge-proxies (Cloudflare Workers) synced with regional Redis clusters.

### 2. [Design: Video Streaming Platform (Netflix Clone)](#)
**Focus:** Content Delivery, Blob Storage, Transcoding Pipelines
- Mapped out the upload, transcoding, and content delivery network (CDN) flow.
- Designed the database schema to handle massive metadata search queries utilizing Elasticsearch.
- Documented the event-driven transcoding pipeline using AWS SQS and Lambda.

### 3. [Design: Highly Available Chat Application](#)
**Focus:** WebSockets, Message Queues, Data Partitioning
- Architected a real-time messaging system utilizing WebSockets and Redis Pub/Sub.
- Addressed database sharding strategies (Consistent Hashing) to store billions of chat messages across PostgreSQL nodes.
- Handled offline message delivery queues and push notification fan-outs.

---

## ⚙️ Core Design Components Mastered

- **Load Balancing:** Layer 4 (TCP) vs Layer 7 (HTTP), Round Robin, Least Connections.
- **Caching:** Read-through, Write-through, Write-behind, Cache Eviction Policies (LRU).
- **Databases:** Relational (ACID) vs. NoSQL (BASE), Sharding, Replication, Indexing strategies.
- **Message Queues:** Kafka, RabbitMQ, SQS, Pub/Sub patterns for asynchronous processing.
