<!-- Header Image -->
<div align="center">
  <img src="https://drive.google.com/uc?id=1zFD8N-NgmxX0lTbF7wcfRiQMVel0JdHq" alt="B2BR Header" width="100%">
</div>

<div align="center">
  
# 🌟 Born2beRoot (42 School Project) 🌟
### Journey into System Administration 🚀

</div>

## 📑 Table of Contents
- [🎯 Project Overview](#-project-overview)
- [📋 Requirements](#-requirements)
  - [💻 Virtual Machine Setup](#-virtual-machine-setup)
  - [⚙️ System Configuration](#️-system-configuration)
  - [🔒 Security Implementation](#-security-implementation)
  - [📊 Monitoring Script](#-monitoring-script)
- [⭐ Bonus Features](#-bonus-features)
- [📤 Submission Guidelines](#-submission-guidelines)
- [📝 Evaluation Criteria](#-evaluation-criteria)
- [📚 Resources](#-resources)

## 🎯 Project Overview

> *"In the world of system administration, security isn't just a feature - it's a mindset."*

Born2beRoot is your gateway to system administration! This project challenges you to create and configure a Virtual Machine with enterprise-level security protocols. Get ready to dive deep into the world of virtualization, system configuration, and server management! 🚀

## 📋 Requirements

### 💻 Virtual Machine Setup

**Essential Components:**
- 🔧 **Hypervisor**: 
  - ✅ VirtualBox (Primary Choice)
  - ⚠️ UTM (Fallback Option)
- 🐧 **Operating System**: 
  - 🌟 Debian (Latest Stable) - *Recommended*
  - 🔄 Rocky Linux (Latest Stable)
- ⛔ **Restrictions**:
  - No GUI allowed! Keep it command-line pure 💪
  - User Setup:
    - 👑 Root user
    - 👤 Personal user (your login)

### ⚙️ System Configuration

#### 💾 Disk Partitioning
```
🔐 Requirements:
├── Minimum 2 encrypted partitions
└── LVM implementation
```

#### 🌐 Network Configuration
```
📡 SSH Service:
├── Port: 4242 only
└── Root SSH: Disabled
```

#### 🛡️ Firewall Setup
```
🔥 UFW/firewalld:
├── Status: Active on startup
├── Port 4242: Open
└── All other ports: Closed
```

### 🔒 Security Implementation

#### 🔑 Password Policy

| Requirement | Detail | Symbol |
|------------|---------|--------|
| Expiration | 30 days | ⏰ |
| Modification Delay | 2 days min | 🕐 |
| Warning | 7 days before | ⚠️ |
| Length | 10 chars min | 📏 |
| Composition | Upper + Lower + Nums | 🔤 |
| Restrictions | No repeating chars (max 3) | 🚫 |

#### 🛡️ Sudo Configuration
```
👮 Security Measures:
├── ❌ 3 attempts max
├── 📝 Custom error message
├── 📁 Logging in /var/log/sudo/
└── 🔐 TTY mode enabled
```

### 📊 Monitoring Script

Your `monitoring.sh` should display these metrics every 10 minutes:

| Metric | Icon | Description |
|--------|------|-------------|
| Architecture | 🏗️ | OS & kernel version |
| CPU | 💽 | Processor details |
| Memory | 🧮 | RAM statistics |
| Storage | 💾 | Disk usage |
| Load | 📈 | CPU load % |
| Boot | 🔄 | Last reboot time |
| LVM | 📁 | LVM status |
| Network | 🌐 | Connection stats |
| Users | 👥 | User count |
| Network | 📡 | IP & MAC |
| Commands | 🔧 | Sudo usage count |

## ⭐ Bonus Features

*Perfect your mandatory part first! ✨*

1. 📂 **Advanced Partitioning**
   - Follow the recommended scheme

2. 🌐 **WordPress Setup**
   ```
   WordPress Stack:
   ├── 🚀 Lighttpd
   ├── 🗄️ MariaDB
   └── 🐘 PHP
   ```

3. 🎯 **Custom Service**
   - Be creative (but no NGINX/Apache2!)

## 📤 Submission Guidelines

```
📦 Submit:
└── signature.txt
    └── 🔑 VM disk signature
```

## 📝 Evaluation Criteria

```
🎯 Defense Checklist:
├── 🔍 Configuration check
├── 💡 OS knowledge
├── 🛠️ Service testing
├── 🔄 Live modifications
└── 📊 Script review
```

## 📚 Resources

### 📖 Official Documentation
- [🎓 Born2beRoot Guide](https://mathieu-soysal.gitbook.io/born2beroot)
- [📚 42 Cursus Guide](https://42-cursus.gitbook.io/guide/rank-01/born2beroot)

### 🗺️ Visual Guides
- [🎨 Mind Map](https://miro.com/app/board/uXjVPEVHTXk=/)
- [📊 Architecture Diagram](https://miro.com/app/board/uXjVP37UxCE=/)

### 📺 Tutorials
- [💻 GitHub Tutorial](https://github.com/gemartin99/Born2beroot-Tutorial/blob/main/README_EN.md)
- [🎥 Video Guide](https://youtu.be/73r3JbkCVy0?si=EuYEs5bsECAAaZbQ)
- [📝 Notion Notes](https://suspectedoceano.notion.site/Born-to-be-root-10756b6213cd4f7ab0165159d33f52e0)

---

<div align="center">
  
### 🌟 Happy System Administration! 🌟
*Remember: Security is not a destination, it's a journey* 🚀

</div>
