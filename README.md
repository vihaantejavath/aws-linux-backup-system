# 🔐 AWS EC2 Encrypted Backup & Recovery System

An automated and secure backup system using **AWS EC2, S3, IAM, cron, and GPG** encryption. This project demonstrates practical skills in cloud automation, shell scripting, and disaster recovery.

---

## 📦 Features

- 🔒 Encrypts EC2 files using GPG
- ☁️ Uploads encrypted backups to S3
- 🕒 Runs automatically with cron
- 🔁 On-demand restore from S3
- 🧹 Auto-delete old backups after 30 days
- 📧 Optional SNS alerts for failures

---

## 🛠️ Tools & Services

- EC2 (Ubuntu)
- S3 (with versioning + lifecycle)
- IAM Roles (least privilege)
- GPG (encryption)
- Cron (scheduling)
- AWS CLI v2

---
📌 Author
Vihaan Tejavath
