# Test-Harman

1. Terraform code was use to Build out the web application.
    -> VPC
    -> Two Instances [one in each AZ]
    -> ELB
    -> Jenkins Job
    -> Hello World Spring Boot
 
                Extra Points
    -> Fetch Data from RDS or dynamo 

# Features

1. Seperation of public and private subnets
2. Use of autoscaling groups to enhance high availability
3. Flexibility to add additional capacity
4. Easily replicate to other regions

# Assumptions

1. Given direct access to ec2 (according to instructions) instances but preserved best practice to house them in a private subnet. In reality, use of bastoin hosts and a adequate key rotation policy is needed
2. Apache was used for the Web Application
3. Mariadb is added to the environment
4. Used public key from my personal laptop to create a keypair

# Directory Structure
├── README.md
├── autoscaling.tf
├── autoscalingpolicy.tf
├── elb.tf
├── key.tf
├── mykey
├── mykey.pub
├── output.tf
├── provider.tf
├── rds.tf
├── scripts
│   └── create_apache.sh
├── securitygroup.tf
├── vars.tf
└── vpc.tf

# Usage

1. Install terraform - follow instructions here - https://www.terraform.io/
2. Edit ~/.aws/credentials file and add key and secret to the [default] section
3. Clone the repository and cd to <parent folder>/harman-coding
4. run terraform init - follow prompts
5. run terraform plan - validate the output
6. run terraform apply - to apply changes
7. run ```terraform destroy`` - to destroy

Terraform Plan
 + aws_db_instance.mariadb
      id:                                          <computed>
      address:                                     <computed>
      allocated_storage:                           "100"
      apply_immediately:                           <computed>
      arn:                                         <computed>
      auto_minor_version_upgrade:                  "true"
      availability_zone:                           "eu-west-1a"
      backup_retention_period:                     "30"
      backup_window:                               <computed>
      ca_cert_identifier:                          <computed>
      character_set_name:                          <computed>
      copy_tags_to_snapshot:                       "false"
      db_subnet_group_name:                        "mariadb-subnet"
      endpoint:                                    <computed>
      engine:                                      "mariadb"
      engine_version:                              "10.1.14"
      hosted_zone_id:                              <computed>
      identifier:                                  "mariadb"
      identifier_prefix:                           <computed>
      instance_class:                              "db.t2.micro"
      kms_key_id:                                  <computed>
      license_model:                               <computed>
      maintenance_window:                          <computed>
      monitoring_interval:                         "0"
      monitoring_role_arn:                         <computed>
      multi_az:                                    "false"
      name:                                        "mariadb"
      option_group_name:                           <computed>
      parameter_group_name:                        "mariadb-parameters"
      password:                                    <sensitive>
      port:                                        <computed>
      publicly_accessible:                         "false"
      replicas.#:                                  <computed>
      resource_id:                                 <computed>
      skip_final_snapshot:                         "true"
      status:                                      <computed>
      storage_type:                                "gp2"
      tags.%:                                      "1"
      tags.Name:                                   "mariadb-instance"
      timezone:                                    <computed>
      username:                                    "root"
      vpc_security_group_ids.#:                    <computed>
