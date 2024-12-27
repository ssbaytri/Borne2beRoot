<!-- Header Image -->
<div align="center">
  <img src="https://drive.google.com/uc?id=1zFD8N-NgmxX0lTbF7wcfRiQMVel0JdHq" alt="B2BR Header" width="100%">
</div>

# Born2beRoot (42 School Project)

## Table of Contents
- [Project Overview](#project-overview)
- [Requirements](#requirements)
  - [Virtual Machine Setup](#virtual-machine-setup)
  - [System Configuration](#system-configuration)
  - [Security Implementation](#security-implementation)
  - [Monitoring Script](#monitoring-script)
- [Bonus Features](#bonus-features)
- [Submission Guidelines](#submission-guidelines)
- [Evaluation Criteria](#evaluation-criteria)
- [Resources](#resources)

## Project Overview

Born2beRoot is a system administration project that introduces students to virtualization technology. The primary objective is to create and configure a Virtual Machine following specific security protocols and system requirements. This project emphasizes the importance of proper system configuration, security implementation, and basic server administration skills.

## Requirements

### Virtual Machine Setup

- **Hypervisor**: 
  - Primary: VirtualBox
  - Alternative: UTM (only if VirtualBox is unavailable)
- **Operating System**: 
  - Debian (latest stable version) - Recommended
  - Rocky Linux (latest stable version) - Alternative option
- **Restrictions**:
  - No GUI installation (X.org or equivalent forbidden)
  - Mandatory user configuration:
    - Root user
    - Additional user with your login as username

### System Configuration

#### Disk Partitioning
- Minimum two encrypted partitions using LVM
- Specific partition structure will be verified during evaluation

#### Network Configuration
- SSH service configuration:
  - Port: 4242 exclusively
  - Root SSH login must be disabled

#### Firewall Setup
- UFW (Debian) or firewalld (Rocky)
  - Must be enabled at startup
  - Only port 4242 should be open
  - All other ports must be closed

### Security Implementation

#### Password Policy
| Requirement | Specification |
|------------|---------------|
| Expiration | 30 days |
| Modification Delay | 2 days minimum |
| Expiry Warning | 7 days before |
| Length | 10 characters minimum |
| Composition | Must include uppercase, lowercase, numbers |
| Restrictions | - Max 3 consecutive identical characters |
| | - Cannot contain username |
| | - Minimum 7 different characters from previous password |
| | - Applies to root password |

#### Sudo Configuration
- Authentication attempt limit: 3
- Custom error message requirement
- Command logging:
  - Location: `/var/log/sudo/`
  - Must include input/output
- Additional requirements:
  - TTY mode enabled
  - Secure paths restricted

### Monitoring Script

`monitoring.sh` must display the following information every 10 minutes:

| Metric | Description |
|--------|-------------|
| Architecture | OS and kernel version |
| CPU | Physical and virtual processors |
| Memory | RAM usage with percentage |
| Storage | Disk usage with percentage |
| CPU Load | Processor load percentage |
| System | Last reboot date/time |
| LVM | Current status |
| Connections | Active connection count |
| Users | Current user count |
| Network | IPv4 and MAC addresses |
| Sudo | Command execution count |

## Bonus Features

*Only evaluated if mandatory part is perfectly implemented*

1. **Partition Structure**
   - Implementation of recommended partition scheme

2. **WordPress Setup**
   - Lighttpd
   - MariaDB
   - PHP

3. **Additional Service**
   - Must be justified during defense
   - NGINX/Apache2 not allowed

## Submission Guidelines

- Submit only `signature.txt` containing VM disk signature
- Signature must match during evaluation
- Do not include the Virtual Machine in repository

## Evaluation Criteria

Defense will include verification of:
- System configuration accuracy
- Understanding of OS differences
  - apt vs. aptitude
  - SELinux/AppArmor functionality
- Service implementation
- Live system modifications
- Script functionality and interruption handling

## Resources

### Official Documentation
- [Official Born2beRoot Guide](https://mathieu-soysal.gitbook.io/born2beroot)
- [42 Cursus Guide](https://42-cursus.gitbook.io/guide/rank-01/born2beroot)

### Visual Guides
- [Project Overview Mind Map](https://miro.com/app/board/uXjVPEVHTXk=/)
- [System Architecture Diagram](https://miro.com/app/board/uXjVP37UxCE=/)

### Tutorials and Guides
- [Comprehensive Tutorial (GitHub)](https://github.com/gemartin99/Born2beroot-Tutorial/blob/main/README_EN.md)
- [Video Tutorial](https://youtu.be/73r3JbkCVy0?si=EuYEs5bsECAAaZbQ)
- [Notion Guide](https://suspectedoceano.notion.site/Born-to-be-root-10756b6213cd4f7ab0165159d33f52e0)

---

**Note**: This project emphasizes accurate implementation over additional features. All mandatory requirements must be perfectly implemented before bonus features will be evaluated.
