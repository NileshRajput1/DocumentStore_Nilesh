# Document Store Application on AWS

This project demonstrates the creation of a Document Store application on Amazon Web Services (AWS) using Python and Boto3 API. The application allows users to upload, search, and download files stored in an AWS S3 bucket. The application will be hosted on an Amazon EC2 instance within a Virtual Private Cloud (VPC) and made accessible from the internet.

## AWS Cloud Infrastructure Requirements

1. **AWS Account:**
   - You need an AWS account to use AWS services. AWS offers a free tier for some services, and this project aims to stay within those limits.

2. **EC2 Instance:**
   - Create an EC2 instance (t2.micro, Amazon Linux 2023) using the Boto3 API.
   - The instance should have a Public IP address to be accessible from the internet.

3. **S3 Bucket:**
   - Create an S3 bucket to store documents/files using the Boto3 API.

## Application Requirements

The Document Store application should have a simple UI with the following features:

### 1. Upload Feature

- The upload function should contain two input fields:
  - Email ID (mandatory field): e.g., abc@gmail.com, xyz@gmail.com
  - Filename: e.g., mybook, yourbook
- Note: Files should be uploaded to the S3 bucket with a format of emailID_filename (e.g., abc@gmail.com_mybook, xyz@gmail.com_yourbook).

### 2. Search Feature

- Fields to input:
  - Email ID (mandatory field): e.g., abc@gmail.com, xyz@gmail.com
  - Search query: e.g., mybook
- Results will be displayed as follows:
  - abc@gmail.com_mybook
  - xyz@gmail.com_mybook (if applicable)

### 3. Download Feature

- Based on the search result, users should be able to select and download files.



## Getting Started

1. Clone this repository to your local machine:
git clone <repository_url>

2. Install the necessary Python packages using pip:

3. Run the application:
python aws.py
 then
python app.py


4. Access the application through a web browser using the EC2 instance's public IP address.

## Directory Structure

- `app.py:` The main Python script for the Document Store application.
- `aws.py:` The main Python script for setting up database infrastrucutre on aws(s3,ec2).
- `templates/:` Contains HTML templates for the application's web pages.
- `requirments.txt:` Contains required packages.


[Click here to visit the website](http://54.159.113.165/)
