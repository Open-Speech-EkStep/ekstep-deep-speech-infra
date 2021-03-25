### QuickStart

The modules to be created via terraform can be run individually or all at once as per specific environments,provided the modules are same for all environnments.

##### Steps:

1. Install kubectl using below command.
```brew install kubectl```

2. Initialize terraform modules  
```terraform init```  

3. Select a workspace as per the environments(dev,test,prod).  
```terraform workspace select <env_name>```  
eg: ```terraform workspace select prod```  

4. Run specific modules as per requirements.  
```terraform apply -target=module.<module-name>```   
eg: ```terraform apply -target=module.sql-database```  

5. Run all modules at once.  
```terraform apply```   

6. Destroy all modules at once.  
```terraform destroy```   
