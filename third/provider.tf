# have information related to provider configuration
provider "aws" {
    region = "us-east-2"
    # access_key = "xxxxxx"
    # secret_key = "xxxxxx"
}

# 1. Static Credentials - Mention in the scripts only. (Not a good idea)

# # 2. Environment Variables - Store in environment variables for better security and management. (But also not a great idea)
# Store the access key and secret key in environment variable
# export AWS_ACCESS_KEY_ID="xxxxxxxxxx"
# export AWS_SECRET_ACCESS_KEY="xxxxxxx"
# But the problem is every time you restart it will be lost and you have to again set it.
# Permanent solution - store it in etc/profile file

# 3. AWS Role - EC2InstanceFullAccess role is created and attach it to security group of the EC2 instance. This way, the instance can assume the role and gain the necessary permissions without hardcoding credentials.