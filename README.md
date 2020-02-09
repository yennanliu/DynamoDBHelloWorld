# DynamoDBHelloWorld

### Prerequisite

<details>
<summary>Prerequisite</summary>

```bash 
# STEP 0) Config AWS 
$ aws configure
# AWS Access Key ID [****************HQ6I]: 
# AWS Secret Access Key [****************A3B0]: 
# Default region name [us-west-2]: 
# Default output format [json]: 

# STEP 1) Download DynamoDB local 
# https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.DownloadingAndRunning.html

# STEP 2) Run DynamoDB local 
# to the dynamoDB file location and run below command 
$ cd ~ && cd DynamoDBHelloWorld/dynamodb_local_latest
$ java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb

# STEP 3) Test Run DynamoDB : check table list
$ aws dynamodb list-tables --endpoint-url http://localhost:8000

```

</details>

### Quick start  (model movie data)
```bash 
$ cd model_movie_data
# STEP 1) Create table 
$ python MoviesCreateTable.py     

# STEP 2) Load data into table 
$ python MoviesLoadData.py

```
