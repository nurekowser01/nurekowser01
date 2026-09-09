# Production DevOps Engineering Portfolio Architecture Plan

## Executive Summary
This portfolio demonstrates real-world production DevOps, Cloud, and Systems Security Engineering capabilities. The architecture follows a full lifecycle progression:
Containerization -> Multi-Container Orchestration -> Ingress & Edge Proxying -> SSL/TLS Certificate Lifecycle -> Self-Hosted PaaS -> CI/CD Automation -> Registry Lifecycle & Image Retention -> Automated Rollbacks -> Zero-Downtime Releases -> Cloud Object Storage & Immutable Backups -> Edge Security & DNS -> System Hardening & Defense-in-Depth -> Backup & Disaster Recovery -> Observability.

## 3-Tier Execution Framework
- **LEVEL 1 — Local:** Functional application code, multi-stage Dockerfiles, Docker Compose stacks, shell scripts, and executable local verification.
- **LEVEL 2 — Reproducible:** Modular Terraform manifests, Ansible playbooks, GitHub Actions pipelines, Cloudflare API declarations with explicit least-privilege tokens and clean environment variables.
- **LEVEL 3 — Real Infrastructure:** Live provisioned infrastructure executed via GitHub CLI (`gh`) and Cloud APIs.

## Portfolio Repository Index (26 Repositories)
| Phase | Category | Repository | Capability Focus |
|---|---|---|---|
| 0 | Hub | [nurekowser01](https://github.com/nurekowser01/nurekowser01) | Profile README & Portfolio Orchestration Hub |
| 1 | Core Infrastructure | [devops-docker](https://github.com/nurekowser01/devops-docker) | Multi-stage builds, non-root users, resource limits, security |
| 2 | Core Infrastructure | [devops-docker-compose](https://github.com/nurekowser01/devops-docker-compose) | Multi-tier stack (Traefik, API, Postgres, Redis, Healthchecks) |
| 3 | Core Infrastructure | [devops-dokploy](https://github.com/nurekowser01/devops-dokploy) | Dokploy PaaS deployment, volume backups, acme.json safety |
| 4 | Core Infrastructure | [devops-coolify](https://github.com/nurekowser01/devops-coolify) | Self-hosted Coolify PaaS, Nixpacks, Dokploy vs Coolify trade-offs |
| 5 | Core Infrastructure | [devops-traefik](https://github.com/nurekowser01/devops-traefik) | Edge reverse proxy, dynamic routing, middlewares, rate limits |
| 6 | Core Infrastructure | [devops-ssl-tls](https://github.com/nurekowser01/devops-ssl-tls) | Let's Encrypt ACME HTTP/DNS challenge, Cloudflare origin certs |
| 7 | CI/CD | [devops-github-actions](https://github.com/nurekowser01/devops-github-actions) | Full production CI/CD workflow, security scanning, healthchecks |
| 8 | CI/CD | [devops-container-registry](https://github.com/nurekowser01/devops-container-registry) | GHCR, Docker Hub, ECR, immutable tags, retention & backups |
| 9 | CI/CD | [devops-deployment-rollback](https://github.com/nurekowser01/devops-deployment-rollback) | Automated healthcheck failure detection & instant v1.1->v1.0 rollback |
| 10 | CI/CD | [devops-zero-downtime-deployment](https://github.com/nurekowser01/devops-zero-downtime-deployment) | Blue/Green deployments, rolling updates, connection draining |
| 11 | Cloud & Storage | [devops-aws-s3](https://github.com/nurekowser01/devops-aws-s3) | Terraform S3, KMS encryption, least privilege, upload/restore test |
| 12 | Cloud & Storage | [devops-cloudflare-r2](https://github.com/nurekowser01/devops-cloudflare-r2) | R2 zero-egress bucket, custom domain, upload/restore validation |
| 13 | Cloud & Storage | [devops-backblaze-b2](https://github.com/nurekowser01/devops-backblaze-b2) | B2 S3 API, application key scoping, upload/restore validation |
| 14 | Cloud & Storage | [devops-object-storage-backup](https://github.com/nurekowser01/devops-object-storage-backup) | Reusable GPG-encrypted multi-cloud backup & restore engine |
| 15 | Networking | [devops-cloudflare](https://github.com/nurekowser01/devops-cloudflare) | Terraform Cloudflare, DNS, WAF, rate limits, least-privilege tokens |
| 16 | Networking | [devops-cloudflare-proxy](https://github.com/nurekowser01/devops-cloudflare-proxy) | Orange Cloud vs DNS-only, edge TLS, authenticated origin pulls |
| 17 | Networking | [devops-cloudflare-tunnel](https://github.com/nurekowser01/devops-cloudflare-tunnel) | cloudflared zero-trust ingress without public inbound ports |
| 18 | Security | [devops-ssh-hardening](https://github.com/nurekowser01/devops-ssh-hardening) | Ed25519 keys, staged lockout protection, optional port guidance |
| 19 | Security | [devops-linux-security](https://github.com/nurekowser01/devops-linux-security) | User/sudo governance, unattended updates, sysctl kernel tuning |
| 20 | Security | [devops-firewall](https://github.com/nurekowser01/devops-firewall) | UFW/iptables defense, Docker host port exposure bypass prevention |
| 21 | Security | [devops-secrets-management](https://github.com/nurekowser01/devops-secrets-management) | Secret hygiene, Docker secrets, SOPS/Vault, Gitleaks scanning |
| 22 | Security | [devops-server-hardening](https://github.com/nurekowser01/devops-server-hardening) | Full Ubuntu 24.04 automated server security hardening playbook |
| 23 | Reliability | [devops-backup-recovery](https://github.com/nurekowser01/devops-backup-recovery) | DB/Volume backups, RPO/RTO metrics, restore.sh & verify.sh |
| 24 | Reliability | [devops-monitoring](https://github.com/nurekowser01/devops-monitoring) | Prometheus, Grafana, Node Exporter, alertmanager webhooks |
| 25 | Reliability | [devops-disaster-recovery](https://github.com/nurekowser01/devops-disaster-recovery) | Production incident runbooks & tabletop disaster simulation |
