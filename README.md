<!-- Header Image -->
<div align="center">
  <img src="https://drive.google.com/uc?id=1zFD8N-NgmxX0lTbF7wcfRiQMVel0JdHq" alt="B2BR Header" width="100%">
</div>

# Born2beRoot

This project is part of the system administration module, focusing on creating a Virtual Machine from scratch while following strict rules and specific security protocols.

## Overview

Born2beRoot introduces you to the world of virtualization. The goal is to create and configure a Virtual Machine under specific instructions, implementing strict rules and security policies.

## Mandatory Part Requirements

### Virtual Machine Setup
- **Virtualization Tool**: VirtualBox (or UTM if VirtualBox cannot be used)
- **Operating System**: Latest stable version of Debian (recommended) or Rocky Linux
- **GUI**: Forbidden to install X.org or any equivalent graphic server
- **Authentication**: Root user + user with your login as username

### System Configuration

#### Partitioning
- Minimum 2 encrypted partitions using LVM

#### Security Protocols
1. **SSH Service**
   - Must run on port 4242 only
   - Root SSH connection not allowed

2. **Firewall**
   - UFW (Debian) or firewalld (Rocky) must be active on startup
   - Only port 4242 must be open

3. **Password Policy**
   - Expires every 30 days
   - Minimum 2 days before modification allowed
   - Warning message 7 days before expiry
   - Minimum 10 characters
   - Must contain uppercase letter, lowercase letter, and number
   - Maximum 3 consecutive identical characters
   - Must not include username
   - Password must have minimum 7 characters different from previous password
   - Root password must comply with policy

4. **Sudo Configuration**
   - Authentication limited to 3 attempts
   - Custom error message for wrong password
   - Archive all sudo commands (input/output) in /var/log/sudo/
   - TTY mode enabled
   - Secure paths restriction

#### System Monitoring
Script `monitoring.sh` must display the following information every 10 minutes:
- Operating system architecture and kernel version
- Physical and virtual processor counts
- RAM usage and percentage
- Disk usage and percentage
- CPU load percentage
- Last reboot date and time
- LVM status
- Active connections count
- User count
- Server IPv4 and MAC address
- Sudo command count

## Bonus Part

Only evaluated if mandatory part is perfect:

1. **Advanced Partition Setup**
   - Implement suggested partition structure

2. **WordPress Website Setup**
   - Lighttpd
   - MariaDB
   - PHP

3. **Additional Service**
   - Must be justified during defense
   - NGINX/Apache2 excluded

## Submission

- Only `signature.txt` containing VM disk signature should be submitted
- Signature must match VM disk during evaluation
- Virtual Machine must not be included in repository

## Evaluation

Defense will include:
- Configuration verification
- Understanding of chosen OS differences (apt vs. aptitude, SELinux/AppArmor)
- Service implementation testing
- Live system modifications
- Script explanation and interruption demonstration

## Important Notes

- Password policy applies to all accounts, including root
- All services must be properly configured and running at startup
- Script must work without visible errors
- Partition structure will be checked during evaluation

This project emphasizes correct implementation over additional features. All mandatory requirements must be perfectly implemented for bonus evaluation.
