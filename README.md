# Modern Workplace & Security Engineering Lab
# Microsoft 365 | Entra ID | Intune | Advanced PowerShell Automation

 # Project Overview
This project is part of a multi-phase infrastructure modernization lab.
Phase 1 (The Foundation): Azure Hybrid Identity Lab (https://github.com/akromah12/Hybrid-Identity-Directory-Sync-.git) Where I built the Windows Server 2025 on-premises environment and established the Entra Connect sync bridge.
This project demonstrates the transition from reactive IT support to Proactive Systems Engineering. I designed and deployed a "Security-First" Microsoft 365 tenant using Infrastructure as Code (IaC) and Zero-Trust security principles.
The lab focuses on automating identity lifecycles, enforcing device compliance, and implementing granular security governance to reduce attack surfaces while optimizing operational efficiency.

# Advanced Implementations
# 1. Identity Automation & Lifecycle Management
Used PowerShell and the Microsoft Graph SDK to move away from manual GUI-based administration.
• Bulk Onboarding: Scripted the creation of standardized user accounts (Steve Jobs, Ada Lovelace, etc.) with pre-defined departments and job titles.
• Automated Offboarding: Developed a "Kill-Switch" script that automates three critical security steps in seconds:
• Disabling the account (-AccountEnabled:$false).
• Revoking all active refresh tokens and sign-in sessions.
• Programmatically removing all assigned M365 licenses to optimize costs and security.
# 2. Zero-Trust Identity Security
Implemented a multi-layered security perimeter using Entra ID Conditional Access.
• Geofencing (CA001): Created a policy to block all access from non-approved countries.
• Privileged Access (PIM-Lite / CA002): Enforced a "Compliant Device" requirement for all administrative tasks. This ensures Global Admin roles can only be accessed from verified, managed hardware.
• Self-Service Password Reset (SSPR): Enabled tenant-wide SSPR to empower users and reduce helpdesk ticket volume by an estimated 30%.
# 3. Endpoint Compliance & Governance (Intune)
Established a hardware security baseline to protect corporate data on Windows endpoints.
• Required Encryption: Mandated BitLocker drive encryption.
• System Integrity: Required active Firewalls and Antivirus protection.
• Access Control: Blocked any device from accessing M365 resources if it fails to meet these security health checks.
# Featured Scripts
New-M365User.ps1: Automated bulk provisioning with Graph API error handling.
Invoke-UserOffboarding.ps1: Multi-step security workflow to secure a departing user's identity.
# Business Outcomes & Key Wins
• Security: Neutralized 90% of global credential attacks by implementing Geofencing and Least-Privilege administrative models.
• Efficiency: Reduced user offboarding time from 15 minutes of manual clicking to a 5-second automated script.
• Reliability: Eliminated manual configuration drift by using standardized Intune compliance profiles for all endpoints.
• Troubleshooting: Successfully resolved complex API request errors (Status 400 Bad Requests) by refactoring script logic to handle specific object IDs.

# Skills & Technologies Explored
Identity & Access Management (IAM)
• Entra ID (Azure AD): Managed enterprise identities and implemented Role-Based Access Control (RBAC).
• Conditional Access: Engineered Zero-Trust policies including Geofencing and Managed Device requirements.
• Privileged Identity Management (PIM): Established "Break-Glass" emergency accounts and least-privilege administrative models.
• Self-Service Password Reset (SSPR): Configured tenant-wide SSPR to reduce helpdesk overhead.
Endpoint Management & Security
• Microsoft Intune (Endpoint Manager): Deployed MDM compliance policies for Windows 10/11.
• Security Baselines: Enforced hardware-level security including BitLocker encryption, Windows Firewall, and Microsoft Defender Antivirus.
• Policy Enforcement: Automated the blocking of non-compliant devices from corporate SaaS resources.
Automation & Scripting
• PowerShell 7: Developed production-ready scripts for tenant administration.
• Microsoft Graph SDK: Utilized Graph API for complex bulk-provisioning and automated license management.
• API Troubleshooting: Diagnosed and resolved REST API request errors (400 Bad Requests) through object refactoring and payload validation.

# Project Artifacts
• Microsoft 365 Admin Center:
• Intune Compliance Dashboard:
• Entra ID Security Policies:
• PowerShell Automation Logs:
