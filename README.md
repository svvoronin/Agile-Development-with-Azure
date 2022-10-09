# Agile-Development-with-Azure
Repository for Udacity Agile Development with Azure course


# Overview

<TODO: complete this with an overview of your project>

## Project Plan
<TODO: Project Plan

* A link to a Trello board for the project
* A link to a spreadsheet that includes the original and final project plan>

## Instructions

<TODO:  
* Architectural Diagram (Shows how key parts of the system work)>

<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

* Project running on Azure App Service

* Project cloned into Azure Cloud Shell

* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>





![image](https://user-images.githubusercontent.com/6615388/194607871-9ae2cae2-bcec-4ad1-9912-a5618975da77.png)

![image](https://user-images.githubusercontent.com/6615388/194612011-3708acef-596d-4f7d-a6bc-918458b1ca9a.png)

![image](https://user-images.githubusercontent.com/6615388/194612799-69829d4a-003d-43b3-a213-6094e4033e81.png)

![image](https://user-images.githubusercontent.com/6615388/194612997-345510c2-7342-4bac-8b40-92bd1c0a5c26.png)

![image](https://user-images.githubusercontent.com/6615388/194618857-a4b45e62-fa76-4239-9ea4-bdc1314e47fb.png)

![image](https://user-images.githubusercontent.com/6615388/194621718-e9137290-0b11-49d6-b2fa-5c5eedb9d51a.png)

![image](https://user-images.githubusercontent.com/6615388/194672606-5489b076-e93f-436c-804f-97bcbce2b41f.png)

![image](https://user-images.githubusercontent.com/6615388/194730681-d784bc67-f5ae-4add-bbc7-e47afbdb9750.png)

![image](https://user-images.githubusercontent.com/6615388/194730741-112e798f-3c2b-4b54-954f-efbbc6cdc6f3.png)

![image](https://user-images.githubusercontent.com/6615388/194758522-3406470d-1cf5-468d-84e5-7bb97f17b6ff.png)

![image](https://user-images.githubusercontent.com/6615388/194758575-272327cc-ee35-4696-916c-38f430f09d78.png)

![image](https://user-images.githubusercontent.com/6615388/194758804-401df7ca-0a5a-4758-bcd1-1d9f3900acde.png)

![image](https://user-images.githubusercontent.com/6615388/194759003-6b65ad8c-f37e-4ec7-b0c6-f81ce6afa97d.png)


    ```
python3 -m venv ~/.myrepo
source ~/.myrepo/bin/activate

conda create -n myrepo python=3.7.0 anaconda
conda activate myrepo

make install

az webapp up -n flaskml-sergey --resource-group Agile-dev-azure

az webapp up -n flaskml-sergey --resource-group CI-CD-project --location switzerlandnorth


    ```
