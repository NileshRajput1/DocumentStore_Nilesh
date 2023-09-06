import boto3

ec2 = boto3.client('ec2', region_name='us-east-1')

response = ec2.run_instances(
    ImageId='ami-051f7e7f6c2f40dc1',  
    InstanceType='t2.micro',
    MinCount=1,
    MaxCount=1,
    KeyName='commvault_project',  
    SecurityGroupIds=['sg-007aba5698f6d98c2'], 
)

instance_id = response['Instances'][0]['InstanceId']
waiter = ec2.get_waiter('instance_running')
waiter.wait(InstanceIds=[instance_id])

public_ip = '54.163.162.174'  
ec2.associate_address(InstanceId=instance_id, PublicIp=public_ip)

s3 = boto3.client('s3', region_name='us-east-1')  

bucket_name = 'nilesh2041019245'

s3.create_bucket(Bucket=bucket_name)
