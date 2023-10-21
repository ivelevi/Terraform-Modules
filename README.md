# Terraform Modules Repository

This repository contains Terraform modules for various AWS resources. These modules are designed to help you provision and manage infrastructure resources on Amazon Web Services (AWS) with ease and consistency.

## Modules

### 1. EC2 Instance Module
This module allows you to create and manage Amazon Elastic Compute Cloud (EC2) instances, providing flexible configuration options for your compute resources.

### 2. S3 Bucket Module
This module simplifies the creation of Amazon S3 buckets with customizable settings, including access control, versioning and static hosting.

### 3. Security Group Module (Work in progress)
The security group module helps you manage AWS Security Groups, to be developed the enabling of fine-grained control over inbound and outbound traffic rules without altering the core module. 

### 4. IAM Policy Module
This module simplifies the creation and management of AWS Identity and Access Management (IAM) policies for controlling access to AWS resources.

### 5. IAM Role Module
The IAM role module enables the creation of IAM roles with specific trust relationships, allowing other AWS services or accounts to assume these roles.

### 6. Simple RDS Module
This module facilitates the creation and management of Amazon Relational Database Service (RDS) instances, including configuration options like database engine, instance class, and storage.

## Prerequisites

- Terraform installed on your local machine.
- Appropriate AWS credentials configured. You can set them using environment variables or shared credentials file.

## Usage

1. Clone this repository to your local machine.

2. Create a Terraform configuration file in your project directory and use the modules for simple provisioning.

3. Initialize your Terraform project:

```shell
terraform init
```

4. Plan your infrastructure changes:

```shell
terraform plan
```
5. Apply the changes:

```shell
terraform apply
```
## Contributions

Contributions are welcome! If you have suggestions, improvements, or new modules to add, please submit a pull request.


## Author

[Levi Cavalcante dos Santos]

Feel free to reach out with any questions or feedback!
