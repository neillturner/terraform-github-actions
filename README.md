# terraform-github-actions
terraform aws github action workflow example with tests

Contains an example workflow for terraform and github actions incorporating:
- terrascan for security scanning before running terraform  
- inspec for testing after running terraform 

This provides a simple terraform workflow that includes tests. 
Example uses terraform workspaces and AWS assume roles. 

The approach is on a pull request the workflow is run without the terraform apply and when it is merged with main branch the terraform apply is also run.  

NOTE: It is recommended to run this on your hosted github runners rather than github's runners so you keep your AWS credentials out of github. 


## Repository Contents 

### profile directory 

Contains an example inspec test against AWS. you need to be authenticated against a valid AWS account to run the tests 

### terraform directory 

Contains a test project with known bad terraform to run tfsec against.

Uses S3 buckets for testing example 

This project has a number of issues that are known to fail tfsec checks.

## Usage 

- git clone repo 
- create a new branch 
- push changes to github 
- Create Pull Request and see github action CI workflow run  


## References 

- [Continuous Integration with GitHub Actions and Terraform](https://wahlnetwork.com/2020/05/12/continuous-integration-with-github-actions-and-terraform/)
- [WahlNetwork/github-action-terraform](https://github.com/WahlNetwork/github-action-terraform)
- [Automate Terraform with GitHub Actions](https://learn.hashicorp.com/tutorials/terraform/github-actions)
- [Automated Terraform Deployments to AWS with Github Actions](https://medium.com/@dnorth98/automated-terraform-deployments-to-aws-with-github-actions-c590c065c179)

- [Terrascan Documentation](https://docs.accurics.com/projects/accurics-terrascan/en/latest/)
- [terrascan-action](https://github.com/accurics/terrascan-action)
- [Terrascan GitHub Action: Easy Policy as Code for IaC Pipelines](https://www.accurics.com/blog/devops-blog/terrascan-github-action-policy-as-code-for-iac-pipelines/)

- [inspec-aws](https://github.com/inspec/inspec-aws)
- [InSpec Resources Reference](https://docs.chef.io/inspec/resources/)
