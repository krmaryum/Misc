# Ansible IaC & Ansible vs Terraform

---

# Question 1: Is Ansible IaC?

## Answer

Yes, Ansible is an Infrastructure as Code (IaC) tool.

## Explanation

Infrastructure as Code (IaC) means managing and provisioning infrastructure using code instead of manual processes.

Ansible allows you to define infrastructure configuration using YAML playbooks.

Example:

```yaml
- name: Install nginx
  apt:
    name: nginx
    state: present
```

This code ensures nginx is installed on a server.

## Why Ansible is IaC

- Uses code (YAML) to define infrastructure
- Automates server configuration
- Ensures consistency and repeatability
- Eliminates manual setup

## Type of IaC

Ansible is a **declarative IaC tool**, meaning you define *what* you want, not *how* to do it.

## Real Example

```yaml
- hosts: redhat_app
  roles:
    - geerlingguy.docker
```

This automatically installs Docker on the target server.

## Final Answer (Interview Ready)

Ansible is an Infrastructure as Code tool because it allows you to define and manage infrastructure configuration using code, making deployments consistent, repeatable, and automated.

---

# Question 2: Ansible vs Terraform

## Core Difference

Terraform is used to create infrastructure, while Ansible is used to configure infrastructure.

---

## Comparison Table

| Feature | Ansible | Terraform |
|--------|--------|----------|
| Type | Configuration Management | Infrastructure Provisioning |
| Language | YAML | HCL |
| Purpose | Configure servers | Create infrastructure |
| State Management | No | Yes |
| Agent | Agentless | Agentless |

---

## Examples

### Terraform Example

```hcl
resource "aws_instance" "web" {
  ami           = "ami-12345"
  instance_type = "t2.micro"
}
```

Creates a server.

---

### Ansible Example

```yaml
- name: Install Docker
  hosts: web
  roles:
    - geerlingguy.docker
```

Configures the server.

---

## Real DevOps Workflow

1. Terraform creates infrastructure (servers, networking)
2. Ansible configures servers (software installation, setup)

---

## When to Use

### Use Terraform when:
- Creating cloud infrastructure (EC2, VMs, networks)

### Use Ansible when:
- Installing software (Docker, Nginx)
- Configuring servers
- Deploying applications

---

## Analogy

Terraform = Building a house  
Ansible = Decorating the house  

---

## Final Answer (Interview Ready)

Terraform is used to provision infrastructure such as servers, networks, and cloud resources, while Ansible is used to configure and manage those servers. Terraform focuses on creating infrastructure, whereas Ansible focuses on configuring and deploying software on existing infrastructure.

---

## Conclusion

Both tools are used together in real-world DevOps pipelines to achieve complete automation of infrastructure and configuration.
