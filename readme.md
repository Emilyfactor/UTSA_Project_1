## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![image](https://user-images.githubusercontent.com/96030770/161370148-f2b694ea-41b7-492d-a3aa-424cf8688688.png)



These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the yml and config file may be used to install only certain pieces of it, such as Filebeat.

  -
  https://github.com/Emilyfactor/UTSA_Project_1/blob/master/ansible/filebeat-playbook.yml



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

- What was its IP address?
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
- In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc.

  -SPECIFY A DIFFERENT GROUP OF MACHINES:
  
  ![image](https://user-images.githubusercontent.com/96030770/161370193-62bde299-2925-4013-bc10-0c06036774dc.png)




   -INSTALL DOCKER.IO
   
   ![image](https://user-images.githubusercontent.com/96030770/161370249-b4b871f6-c1bb-4eda-930b-93f9766b8634.png)



  -INSTALL PYTHON-PIP

  ![image](https://user-images.githubusercontent.com/96030770/161370318-762432b4-f872-417c-b9bd-eb9a5e87b9be.png)



  -INCREASE VIRTUAL MEMORY

  ![image](https://user-images.githubusercontent.com/96030770/161370361-16c8edda-ac1b-452e-a749-9082ddf25120.png)


  -DOWNLOAD AND LAUNCH ELK DOCKER CONTAINER
  
  ![image](https://user-images.githubusercontent.com/96030770/161370519-1dc2e1ed-9315-4c5b-b079-1417b955b5bf.png)


The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.
-![jump-box](https://user-images.githubusercontent.com/96030770/161402701-192bdf6c-07b5-41a0-848e-fdbd71406aaa.PNG)

-![ELK-ps](https://user-images.githubusercontent.com/96030770/161402707-9a1b752e-e0e4-40d2-a8f5-2f552d0c4a48.PNG)

-![Web-1](https://user-images.githubusercontent.com/96030770/161402713-0ef2be71-7dd6-44ee-9d4e-dd231cb83a24.PNG)

-![web-2](https://user-images.githubusercontent.com/96030770/161402718-827cc0e2-7ed7-40f8-aea9-2fd953a918f0.PNG)

-![web-3](https://user-images.githubusercontent.com/96030770/161402727-8bb6ebed-655d-404f-9ffd-784f27cb311e.PNG)


### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- List the IP addresses of the machines you are monitoring
  
  Web-1: 10.0.0.5
  Web-2: 10.0.0.6 
  Web-3: 10.0.0.8

We have installed the following Beats on these machines:

-![kibana_filebeat](https://user-images.githubusercontent.com/96030770/161402574-8c01b17a-c613-4f01-8abe-d838be2998bb.PNG)

-![kibana_metricbeat](https://user-images.githubusercontent.com/96030770/161402587-07b5b714-b244-440d-88f2-7274ca96bff0.PNG)



These Beats allow us to collect the following information from each machine:
- ![Kibana_metric](https://user-images.githubusercontent.com/96030770/161402591-99bc993d-0deb-4aad-854b-42e257c080ed.PNG)
- ![kibana_logs](https://user-images.githubusercontent.com/96030770/161402611-065c3364-741d-477f-a51e-371b887dbb3e.PNG)


### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the YML file to ANSIBLE FOLDER.
- Update the CONFIG file to include...
- Run the playbook, and navigate to KIBANA to check that the installation worked as expected.

- Which file is the playbook? filebeat_playbook.yml, metricbeat-playbook.yml
- Where do you copy it? /etc/ansible
- Which file do you update to make Ansible run the playbook on a specific machine? /etc/ansible/hosts file
- How do I specify which machine to install the ELK server on versus which to install Filebeat on? On the hosts config file make two separate groups: webserver & ELKserver with all designated private IP
- Which URL do you navigate to in order to check that the ELK server is running? http://51.120.82.50:5601/app/kibana (ELKip) 

## Bonus
- command to download playbooks

    -ansible-playbook metricbeat-playbook.yml
    -ansible-playbook filebeat-playbook.yml

- command to create and edit files

    -nano filebeat-playbook.yml
    -nano metricbeat-config.yml

- command to log into all VMs while in Jump_Box

    -ssh ansible@Web-1 private IP address

- command to log into Jump_Box

    -ssh azadmin@Jump-Box-Provisioner Public IP address

- command to update all packages

    -sudo apt-get update
