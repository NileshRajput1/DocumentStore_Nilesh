# Document Store Application on AWS

This project demonstrates the creation of a Document Store application on Amazon Web Services (AWS) using Python and Boto3 API. The application allows users to upload, search, and download files stored in an AWS S3 bucket. The application will be hosted on an Amazon EC2 instance within a Virtual Private Cloud (VPC) and made accessible from the internet.

## AWS Cloud Infrastructure Requirements

1. **AWS Account:**
   - You need an AWS account to use AWS services. AWS offers a free tier for some services, and this project aims to stay within those limits.

2. **EC2 Instance:**
   - Created an EC2 instance (t2.micro, Amazon Linux 2023) using the Boto3 API.
   - The instance have a Public IP address to be accessible from the internet.

3. **S3 Bucket:**
   - Created an S3 bucket to store documents/files using the Boto3 API.


### 1. Upload Feature

- The upload function  contains two input fields:
  - Email ID (mandatory field): e.g., abc@gmail.com, xyz@gmail.com
  - Filename: e.g., mybook, yourbook
- Note: Files will be uploaded to the S3 bucket with a format of emailID_filename (e.g., abc@gmail.com_mybook, xyz@gmail.com_yourbook).

### 2. Search Feature

- Fields to input:
  - Email ID (mandatory field): e.g., abc@gmail.com, xyz@gmail.com
  - Search query: e.g., mybook
- Results will be displayed as follows:
  - abc@gmail.com_mybook
  - xyz@gmail.com_mybook 

### 3. Download Feature

- Based on the search result, users will be able to select and download files.



## Getting Started

1. Clone this repository to your local machine:
git clone <repository_url>

2. Install the necessary Python packages using pip:

3. Run the application:
python app.py  (aws.py has already created infrastructure for storing and retrival of data)

- Note: Make sure you have configured aws cli in your local machine , and aws.py has already been initialized for VPC and bucket creation.



5. Access the application through a web browser using the EC2 instance's public IP address.

## Directory Structure

- `app.py:` The main Python script for the Document Store application.
- `aws.py:` The main Python script for setting up database infrastrucutre on aws(s3,ec2).
- `templates/:` Contains HTML templates for the application's web pages.
- `requirments.txt:` Contains required packages.


[Click here to visit the website](http://54.159.113.165/)
