# 🔐 Linux Security Hardening (SSH + Firewall + Fail2Ban)

![Linux](https://img.shields.io/badge/Linux-Security-blue)
![Bash](https://img.shields.io/badge/Bash-Scripting-black)
![Security](https://img.shields.io/badge/Security-Hardening-green)

> 💡 Apply essential security hardening to a Linux server by securing SSH, configuring firewall rules, and preventing brute-force attacks

---

## 🧠 Overview

This project provides a Bash script that applies **basic but essential security hardening** to a Linux server.

It focuses on protecting remote access, reducing exposure, and mitigating common attack vectors such as brute-force attempts.

**Technologies used:**

* Linux (Debian/Ubuntu-based systems)
* Bash scripting
* UFW (firewall)
* Fail2Ban (intrusion prevention)

---

## 🎯 Objective

The goal of this project is to:

* Secure SSH access
* Configure a firewall
* Prevent brute-force attacks
* Automate baseline hardening tasks

---

## 🛡️ Hardening Areas

This project focuses on:

* **Firewall (UFW)**

  * Allows only required ports (22 / 2222)
  * Blocks all other traffic by default

* **SSH Hardening**

  * Changes default SSH port (22 → 2222)
  * Disables root login
  * Optionally disables password authentication

* **Fail2Ban**

  * Protects against brute-force attacks
  * Automatically bans malicious IPs

* **System Updates**

  * Updates package lists

---

## 🏗️ Execution Flow

```
[Linux Server]
        ↓
[Run Script (sudo)]
        ↓
[System Update]
        ↓
[Install Security Tools]
        ↓
[Configure Firewall]
        ↓
[Harden SSH]
        ↓
[Enable Fail2Ban]
        ↓
[System Secured]
```

---

## ⚙️ Key Features

* Automated hardening using Bash
* SSH security improvements
* Firewall configuration (UFW)
* Intrusion prevention (Fail2Ban)
* Execution logging (`hardening.log`)
* Safe execution checks (root validation)

---

## 🧩 How It Works

The script performs:

1. Validates execution as root
2. Updates system packages
3. Installs UFW and Fail2Ban
4. Configures firewall rules
5. Applies SSH hardening (port change + security settings)
6. Enables and starts Fail2Ban
7. Logs all actions

---

## 🔐 Security Considerations

* SSH port is changed from **22 to 2222**
* Ensure firewall allows the new port before disconnecting
* Disabling password authentication requires SSH key access
* Misconfiguration may result in loss of remote access

---

## 🌍 Real-World Use Case

This script can be used to:

* Secure cloud virtual machines
* Prepare servers for production environments
* Reduce exposure to automated attacks
* Serve as a baseline for further security automation

---

## ▶️ Usage

```bash
sudo ./hardening.sh
```

---

## 📊 Example Output

```
🔐 Iniciando hardening...
🔥 Configurando firewall...
🔑 Configurando SSH...
🚫 Activando Fail2Ban...

✅ Hardening completado
```

---

## 🚀 Future Improvements

* CIS benchmark alignment
* SSH key enforcement only
* Integration with auditing tools (Lynis)
* Centralized logging

---

## 📌 Key Takeaways

This project demonstrates:

* Linux system hardening
* SSH security practices
* Firewall and intrusion prevention
* DevSecOps mindset in infrastructure

---
