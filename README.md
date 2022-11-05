# Agile-Development-with-Azure

Repository for Udacity Agile Development with Azure course

# Overview

This work demonstrates the main principles of Continious Integration (CI) and Continious Delivery (CD) for deployment of applications to Azure.
It gives an overview on how to:
- Integrate an Azure Cloud Shell environment
- Build CI/CD pipelines to test, deploy and operationalize a Machine Learning project using GitHub Actions and Azure Devops

## Project Plan

- [Trello Board](https://trello.com/b/9iA3AR5T/agile-development-with-azure)
- [Project plan](Project_Plan.xlsx)

## Architectural Diagram

![image](https://user-images.githubusercontent.com/6615388/199479413-f75eb9d4-1eb8-459f-a0d9-5b97bbbfafef.png)

## Instructions

### Continious Integration (CI)

#### Deploy project with Azure Cloud Shell

- Launch Azure Cloud Shell:

![image](https://user-images.githubusercontent.com/6615388/194607871-9ae2cae2-bcec-4ad1-9912-a5618975da77.png)

- Create SSH Key:

![image](https://user-images.githubusercontent.com/6615388/194612011-3708acef-596d-4f7d-a6bc-918458b1ca9a.png)

- Add the new SSH Key to GitHub:

![image](https://user-images.githubusercontent.com/6615388/194612799-69829d4a-003d-43b3-a213-6094e4033e81.png)

- Clone project into Azure Cloud Shell

![image](https://user-images.githubusercontent.com/6615388/194612997-345510c2-7342-4bac-8b40-92bd1c0a5c26.png)

- Create Python virtual environment:

```
python3 -m venv ~/.myrepo
source ~/.myrepo/bin/activate
```

![image](https://user-images.githubusercontent.com/6615388/194618857-a4b45e62-fa76-4239-9ea4-bdc1314e47fb.png)

- Run Make file to install, lint and test the code (Make sure the tests are passed):

```
make all
```

![image](https://user-images.githubusercontent.com/6615388/194621718-e9137290-0b11-49d6-b2fa-5c5eedb9d51a.png)

#### Configure GitHub Actions

- Enable GitHub Actions build and verify remote tests:

![image](https://user-images.githubusercontent.com/6615388/194672606-5489b076-e93f-436c-804f-97bcbce2b41f.png)

### Continious Delivery (CD)

#### Azure Web Service

- Create a web service on Azure:

```
az webapp up -n flaskml-sergey-voronin --resource-group CI-CD-project --location switzerlandnorth
```
- Check if your current python version is compatible with original Flask starter code (There may be a need to control a python version in the python env you create)
  The following conda command creates python virtual environment with specific python version in it:
```
conda create -n myrepo python=3.7.0 anaconda
conda activate myrepo
``` 
  
- Check out the URL to see the deployed web service:

![image](https://user-images.githubusercontent.com/6615388/194759003-6b65ad8c-f37e-4ec7-b0c6-f81ce6afa97d.png)

- In make_predict_azure_app.sh file change the app name to the one you created:

![image](https://user-images.githubusercontent.com/6615388/199498429-fbdc8c85-839c-4b2e-83c6-e4358c0ff76d.png)

#### Deploy project with Azure DevOps

- Configure project in Azure Pipelines and run the pipeline to deploy project to App Service:

![image](https://user-images.githubusercontent.com/6615388/194761457-676aa46b-443b-41a1-932e-427f26e9b129.png)

#### Verify the deployed application

- Check the web app on Azure:

![image](https://user-images.githubusercontent.com/6615388/194767472-0813a0b6-6e36-4070-83e4-53eee59d1de8.png)

- Run ./make_predict_azure_app.sh command to get a prediction:
![image](https://user-images.githubusercontent.com/6615388/194758522-3406470d-1cf5-468d-84e5-7bb97f17b6ff.png)

- Test it locally
![image](https://user-images.githubusercontent.com/6615388/194758575-272327cc-ee35-4696-916c-38f430f09d78.png)

- Check output of streamed log files from deployed application:

![image](https://user-images.githubusercontent.com/6615388/194759433-222aa845-d8e1-40f9-928b-2682f2a35471.png)

## Enhancements

The following can be done to improve the project:

- Add more enhanced tests to the pipelines
- Use GitHub Actions for deployment
- Deploy the infrastructure with terraform

## Demo

<TODO: Add link Screencast on YouTube>

![image](https://user-images.githubusercontent.com/6615388/194730741-112e798f-3c2b-4b54-954f-efbbc6cdc6f3.png)



![image](https://user-images.githubusercontent.com/6615388/194758804-401df7ca-0a5a-4758-bcd1-1d9f3900acde.png)

![image](https://user-images.githubusercontent.com/6615388/194759531-5a46fcf9-d84f-4c75-8514-9fbf5694d43e.png)

![image](https://user-images.githubusercontent.com/6615388/194761847-e7a71fc1-1fcb-4fa5-9ba2-d57ac53b06f9.png)

    ```



make install

az webapp up -n flaskml-sergey --resource-group Agile-dev-azure

https://flaskml-sergey-voronin.scm.azurewebsites.net/api/logs/docker

az webapp log tail

python -m flask run

    ```

[![Python application test with Github Actions](https://github.com/svvoronin/Agile-Development-with-Azure/actions/workflows/pythonapp.yml/badge.svg?branch=main&event=deployment_status)](https://github.com/svvoronin/Agile-Development-with-Azure/actions/workflows/pythonapp.yml)
