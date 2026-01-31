#!bin/bash
{
set -x
# list of s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

#list ec2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[] | {ID: .InstanceId, Name: (.Tags[]? | select(.Key=="Name") | .Value), status: .State.Name}' 

#list of IAM users
echo "Print list of IAM users"
aws iam list-users >> output.json



#listing example rebase


#main changes

#list lamda functions

# rebase example
#

#merge example

} >> output.json




