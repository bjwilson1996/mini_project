# mini_project
 Automated AWS deployment with Terraform, Ansible, and Jenkins CI/CD

 

---

## 🔧 Technologies Used

- **Terraform** – Infrastructure provisioning (VPC, subnets, EC2, security groups)
- **Ansible** – Configuration management (Apache installation, web setup)
- **Jenkins** – CI/CD pipeline automation
- **AWS** – Cloud infrastructure provider
- **Git** – Version control system

---

## 📦 Features

- Deploys a VPC with public and private subnets across two Availability Zones
- Provisions EC2 instances using Terraform
- Configures Apache web server using Ansible
- Integrates with Jenkins for full CI/CD automation
- Uses SSH key-based authentication for secure access

---

## 🚀 Pipeline Overview (Jenkinsfile)

1. **Checkout Code** – Pulls from GitHub repository
2. **Terraform Apply** – Initializes and applies infrastructure
3. **Ansible Playbook** – Configures EC2 instances (Apache install, custom index.html)

---

## ⚙️ Prerequisites

- [x] Terraform ≥ 1.0.0
- [x] Ansible ≥ 2.10
- [x] Jenkins ≥ 2.300
- [x] AWS CLI (configured)
- [x] SSH Key Pair (`.pem` file) for Ansible access

---

## 📂 How to Use

1. **Clone the repo**  
   ```bash
   git clone https://github.com/your-username/your-repo.git
   cd your-repo
2. 
---

## 🔧 Technologies Used

- **Terraform** – Infrastructure provisioning (VPC, subnets, EC2, security groups)
- **Ansible** – Configuration management (Apache installation, web setup)
- **Jenkins** – CI/CD pipeline automation
- **AWS** – Cloud infrastructure provider
- **Git** – Version control system

---

## 📦 Features

- Deploys a VPC with public and private subnets across two Availability Zones
- Provisions EC2 instances using Terraform
- Configures Apache web server using Ansible
- Integrates with Jenkins for full CI/CD automation
- Uses SSH key-based authentication for secure access

---

## 🚀 Pipeline Overview (Jenkinsfile)

1. **Checkout Code** – Pulls from GitHub repository
2. **Terraform Apply** – Initializes and applies infrastructure
3. **Ansible Playbook** – Configures EC2 instances (Apache install, custom index.html)

---

## ⚙️ Prerequisites

- [x] Terraform ≥ 1.0.0
- [x] Ansible ≥ 2.10
- [x] Jenkins ≥ 2.300
- [x] AWS CLI (configured)
- [x] SSH Key Pair (`.pem` file) for Ansible access

---

## 📂 How to Use

1. **Clone the repo**  
   ```bash
   git clone https://github.com/your-username/your-repo.git
   cd your-repo
2. 
---

## 🔧 Technologies Used

- **Terraform** – Infrastructure provisioning (VPC, subnets, EC2, security groups)
- **Ansible** – Configuration management (Apache installation, web setup)
- **Jenkins** – CI/CD pipeline automation
- **AWS** – Cloud infrastructure provider
- **Git** – Version control system

---

## 📦 Features

- Deploys a VPC with public and private subnets across two Availability Zones
- Provisions EC2 instances using Terraform
- Configures Apache web server using Ansible
- Integrates with Jenkins for full CI/CD automation
- Uses SSH key-based authentication for secure access

---

## 🚀 Pipeline Overview (Jenkinsfile)

1. **Checkout Code** – Pulls from GitHub repository
2. **Terraform Apply** – Initializes and applies infrastructure
3. **Ansible Playbook** – Configures EC2 instances (Apache install, custom index.html)

---

## ⚙️ Prerequisites

- [x] Terraform ≥ 1.0.0
- [x] Ansible ≥ 2.10
- [x] Jenkins ≥ 2.300
- [x] AWS CLI (configured)
- [x] SSH Key Pair (`.pem` file) for Ansible access

---

## 📂 How to Use

1. **Clone the repo**  
   ```bash
   git clone https://github.com/your-username/your-repo.git
   cd your-repo
2. Terraform Deployment
   cd terraform
   terraform init
   terraform apply -auto-approve
---
3.Ansible Configuration
  cd ../ansible
ansible-playbook -i hosts playbook.yml
---
4. jenkins Pipeline
   created new pipeline job in jenkins
   added .pem as jenkins ssh credentials
   included jenkinsfile to define build steps



   
