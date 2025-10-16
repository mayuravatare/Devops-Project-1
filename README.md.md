
Devops-Project-1 — Automated CI/CD Pipeline for Static Website Deployment on AWS (us-east-1)

You can directly copy this into your repository — it’s 100% Markdown-ready.

# 🚀 Devops-Project-1 — Automated CI/CD Pipeline for Static Website Deployment on AWS (us-east-1)

A fully automated **CI/CD pipeline** that deploys a **static website** to an **Amazon EC2 instance** using **AWS CodePipeline**, **CodeBuild**, and **CodeDeploy** — integrated with GitHub for version control and continuous delivery.

---

## 📚 Table of Contents

1. [About the Project](#-about-the-project)
2. [Built With](#-built-with)
3. [Prerequisites](#-prerequisites)
4. [Getting Started](#-getting-started)
5. [Installation](#-installation)
6. [Usage](#-usage)
7. [Roadmap](#-roadmap)
8. [Architecture Diagram](#-architecture-diagram)
9. [License](#-license)
10. [Author](#-author)

---

## 📌 About the Project

This project demonstrates a **complete AWS CI/CD automation workflow** — from code push to deployment — for a static HTML/CSS/JS website hosted on an EC2 instance.  
Whenever a developer pushes code to **GitHub**, the pipeline automatically:
1. Detects changes using **CodePipeline**
2. Builds the project using **CodeBuild**
3. Deploys the new version via **CodeDeploy**
4. Delivers it to **EC2**, where the **CodeDeploy Agent** completes the deployment

**Region:** `us-east-1`

---

## 🧰 Built With

- [AWS CodePipeline](https://aws.amazon.com/codepipeline/)
- [AWS CodeBuild](https://aws.amazon.com/codebuild/)
- [AWS CodeDeploy](https://aws.amazon.com/codedeploy/)
- [Amazon EC2](https://aws.amazon.com/ec2/)
- [AWS IAM](https://aws.amazon.com/iam/)
- [GitHub](https://github.com/)
- [HTML5, CSS3, JavaScript](https://developer.mozilla.org/en-US/docs/Web)

---

## 🧾 Prerequisites

Before you begin, ensure you have the following:
- An **AWS account**
- A **GitHub repository** (linked with CodePipeline)
- **IAM Roles** created:
  - `CodeDeployServiceRole`
  - `CodeBuildServiceRole`
  - `EC2CodeDeployRole`
  - `AWSServiceRoleForAmazonSSM` *(service-linked role)*
  - `AWSServiceRoleForResourceExplorer` *(service-linked role)*
- EC2 instance with:
  - Ubuntu or Amazon Linux
  - Apache or Nginx installed
  - CodeDeploy Agent installed and running

---

## 🧩 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/mayuravatare/Devops-Project-1.git
cd Devops-Project-1

2. Files and Directories
├── appspec.yaml          # Deployment instructions for CodeDeploy
├── buildspec.yaml         # Build configuration for CodeBuild
├── index.html             # Static website file
└── scripts/
    ├── before_install.sh
    ├── after_install.sh
    ├── start_server.sh
    └── validate.sh

⚙️ Installation
1. Launch EC2 Instance

Use Amazon Linux 2 or Ubuntu in region us-east-1.

2. Install the CodeDeploy Agent
sudo apt update -y
sudo apt install ruby-full wget -y
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo systemctl enable codedeploy-agent
sudo systemctl start codedeploy-agent

3. Create IAM Roles
Role Name	Description
CodeDeployServiceRole	Allows CodeDeploy to manage deployments
CodeBuildServiceRole	Allows CodeBuild to access artifacts
EC2CodeDeployRole	Attached to EC2 instance for deployment access
AWSServiceRoleForAmazonSSM	Manages EC2 via SSM
AWSServiceRoleForResourceExplorer	Enables AWS resource discovery
🚀 Usage

Push your latest code changes to GitHub

CodePipeline automatically triggers the workflow

CodeBuild packages and uploads artifacts to S3

CodeDeploy deploys the new version to your EC2 instance

Validate deployment by visiting:

http://<your-ec2-public-ip>


You should see:
“Hello, This is Mayur Avatare — Welcome to my Web Page”

🗺️ Roadmap

 Integrate CodePipeline with GitHub

 Configure CodeBuild with buildspec.yaml

 Deploy via CodeDeploy to EC2

 Add automated testing with CodeBuild reports

 Deploy to multiple EC2 instances using Load Balancer

 Extend pipeline for containerized deployment (ECS/EKS)

🏗️ Architecture Diagram
               ┌────────────┐
               │  Developer │
               └──────┬─────┘
                      │ Git Push
                      ▼
                ┌─────────────┐
                │   GitHub    │
                └──────┬──────┘
                      │ Trigger
                      ▼
             ┌────────────────────┐
             │   AWS CodePipeline │
             └──────┬──────┬─────┘
                    │      │
          ┌─────────┘      └──────────┐
          ▼                            ▼
   ┌─────────────┐              ┌─────────────┐
   │ AWS CodeBuild│              │AWS CodeDeploy│
   └──────┬──────┘              └──────┬──────┘
          │                            │
          ▼                            ▼
     ┌───────────────┐         ┌─────────────────┐
     │   S3 Artifact  │         │   Amazon EC2     │
     └───────────────┘         │ (with Agent)     │
                               └─────────────────┘
                    REGION: us-east-1

📜 License

Distributed under the MIT License.
See LICENSE file for more information.

🧑‍💻 Author

Mayur Avatare
Aspiring Cloud & DevOps Engineer passionate about AWS automation, CI/CD, and scalable architecture.

📧 GitHub Profile