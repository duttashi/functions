### Introduction

The following documentation describe the process flow in developing a bot agent to check the customer's bank account balance. It requires the following resources and permissions.

#### Resources
1. AWS Lex
2. AWS Lambda
3. AWS Cloudwatch (*for logs monitoring purpose only*) 

#### Permission

This bot will require the `lambda`, `dynamodb` `list, read, write, access role`

It has the following stages:

#### Stages

1. AWS Lex to create the user-facing `Intent`
2. AWS Lambda for the program logic

#### Steps for creating a bot to check customer's credit account balance

1. In AWS Lex, create an Intent. I created the Intent called, `checkCreditCardBal`
2. In `Sample Utterances`, type some common utterances used to check credit card balance, like, `check credit card balance`, `check credit balance` etc.
3. Create a slot. 
	1. Name: `ccType`
	2. Slot type: `creditCardType`
	3. Prompt: `What is your credit card type (platinum or signature)`
4. Confirmation prompt- leave it unchecked
5. Fulfillment
	1. Choose AWS Lambda function. Assign the associated python lambda script, `check_credit_balance.py` logic for this intent to work.
1. Create a `python3.6` lambda function. See this `python3.6` [script](https://github.com/duttashi/serverless/blob/master/case-studies/credit-card-balance-check-system/check_credit_balance.py).
2. Also see this `json` test script to test the python [script](https://github.com/duttashi/serverless/blob/master/case-studies/credit-card-balance-check-system/test-script.json).

-----------------------

#### Possible Error's and Solutions

##### Error

- If the data table name is incorrect, the following error will be generated.

> Error: botocore.errorfactory.ResourceNotFoundException: An error occurred (ResourceNotFoundException) when calling the Query operation: Requested resource not found

##### Solution

This error is generated because the library `boto` is not able to find the data table. 
Note: The boto3 library has a surprising behavior here. This line,  `user_details_db_client = boto3.resource(dynamo_string, us_west_2).Table(user_details)` will succeed even if the table doesn't exist. (Naming wise, note also that this is a "resource", not a "client").

*Ensure the table name is correct.* Check `Dynamodb` to verify the table name.

-----------------------

#### Helpful Observation

- **Definition of a working script for AWS environment**: When the code logic (*designed for an AWS chat bot*) is executed/run in a local environment (*like windows OS, using pycharm*) yielding the message, `Process finished with exit code 0`. Then this means, the code will run successfully in the AWS-Lambda environment too.


	
