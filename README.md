### QuickStart

The modules to be created via terraform can be run individually or all at once as per specific environments,provided the modules are same for all environnments.

##### Steps:

1.Initialize terraform modules  
```terraform init```  

2. Select a workspace as per the environments(dev,test,prod).  
```terraform workspace select <env_name>```  
eg: ```terraform workspace select prod```  

3. Run specific modules as per requirements.  
```terraform apply -target=module.<module-name>```   
eg: ```terraform apply -target=module.sql-database```  

4. Run all modules at once.  
```terraform apply```   

5. Destroy all modules at once.  
```terraform destroy```   
