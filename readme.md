## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![image](https://user-images.githubusercontent.com/96030770/161370148-f2b694ea-41b7-492d-a3aa-424cf8688688.png)



These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the yml and config file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.
Load balancing ensures that the application will be highly functional and available, in addition to restricting traffic to the network.

- What aspect of security do load balancers protect? 
    Load balancers add resiliency by rerouting live traffic from one server to another if a server becomes a target to a DDOS attack or becomes unavailable.

- What is the advantage of a jump box? 
    A jump Box is important as it prevents AZURE VMs from being exposed via public IP address. It allows us to monitor and log in on a single box. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the network and system system logs.

- What does Filebeat watch for? 
    Filebeat monitors the log files or locations. Collects log events, and forwards them either to elasticsearch or logstash.

- What does Metricbeat record?
    Metricbeat takes the metrics and statistics that is collects and sends them to the output to elasticsearch or logstash.

The configuration details of each machine may be found below.

| Name     | Function | IP Address            | Operating System |
|----------|----------|-----------------------|------------------|
| Jump Box | Gateway  | 10.0.0.4/40.69.155.80 | Linux            |
| Web-1    | Ubuntu   | 10.0.0.5/52.173.29.26 | Linux            |
| Web-2    | Ubuntu   | 10.0.0.6/52.173.29.26 | Linux            |
| Web-3    | Ubuntu   | 10.0.0.8/52.173.29.26 | Linux            |
| ELK      | Ubuntu   | 10.1.0.4/51.120.82.50 | Linux            | 

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the JUMP-BOX-PROVISIONER machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- WORKSTATION MY PUBLIC IP THROUGH TCP 5601

Machines within the network can only be accessed by the WORKSTATION THROUGH SSH TO JUMP-BOX.

- Which machine did you allow to access your ELK VM? 
    JUMP-BOX THROUGH SSH

- What was its IP address?_
    10.1.0.4

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses                    |
|----------|---------------------|-----------------------------------------|
| Jump Box | Yes                 | Workstation IP on SSH 22                |
| Web-1    | No                  | 10.1.0.4                                |
| Web-2    | No                  | 10.1.0.4                                |
| Web-3    | No                  | 10.1.0.4                                |
| ELK      | No                  | Workstation my public IP using TCP 5601 |


### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- What is the main advantage of automating configuration with Ansible?
    ANSIBLE LETS YOU QUICKLY AND EASILY DEPLOY MULTIPLE APPLICATIONS THROUGH A YAML PLAYBOOK. 

The playbook implements the following tasks:
- In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
  -SPECIFY A DIFFERENT GROUP OF MACHINES:




  -INSTALL DOCKER.IO


  -INSTALL PYTHON-PIP



  -INCREASE VIRTUAL MEMORY


  -DOWNLOAD AND LAUNCH ELK DOCKER CONTAINER

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- List the IP addresses of the machines you are monitoring
  Web-1: 10.0.0.5
  Web-2: 10.0.0.6 
  Web-3: 10.0.0.8

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the YML file to ANSIBLE FOLDER.
- Update the CONFIG file to include...
- Run the playbook, and navigate to KIBANA to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
