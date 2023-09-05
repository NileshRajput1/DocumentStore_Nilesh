# DocumentStore_Nilesh
<!DOCTYPE html>
<html>

<head>
    <title>Document Store Application on AWS</title>
</head>

<body>
    <h1>Document Store Application on AWS with Python and Boto3</h1>

    <p>This project demonstrates the creation of a Document Store application on Amazon Web Services (AWS) using Python and Boto3 API. The application allows users to upload, search, and download files stored in an AWS S3 bucket. The application will be hosted on an Amazon EC2 instance within a Virtual Private Cloud (VPC) and made accessible from the internet.</p>

    <h2>AWS Cloud Infrastructure Requirements</h2>

    <ol>
        <li>
            <strong>AWS Account:</strong> You need an AWS account to use AWS services. AWS offers a free tier for some services, and this project aims to stay within those limits.
        </li>
        <li>
            <strong>EC2 Instance:</strong>
            <ul>
                <li>Create an EC2 instance (t2.micro, Amazon Linux 2023) using the Boto3 API.</li>
                <li>The instance should have a Public IP address to be accessible from the internet.</li>
            </ul>
        </li>
        <li>
            <strong>S3 Bucket:</strong>
            <ul>
                <li>Create an S3 bucket to store documents/files using the Boto3 API.</li>
            </ul>
        </li>
    </ol>

    <h2>Application Requirements</h2>

    <p>The Document Store application should have a simple UI with the following features:</p>

    <h3>1. Upload Feature</h3>

    <ul>
        <li>The upload function should contain two input fields:
            <ul>
                <li>Email ID (mandatory field): e.g., abc@gmail.com, xyz@gmail.com</li>
                <li>Filename: e.g., mybook, yourbook</li>
            </ul>
        </li>
        <li>Note: Files should be uploaded to the S3 bucket with a format of emailID_filename (e.g., abc@gmail.com_mybook, xyz@gmail.com_yourbook).</li>
    </ul>

    <h3>2. Search Feature</h3>

    <ul>
        <li>Fields to input:
            <ul>
                <li>Email ID (mandatory field): e.g., abc@gmail.com, xyz@gmail.com</li>
                <li>Search query: e.g., mybook</li>
            </ul>
        </li>
        <li>Results will be displayed as follows:
            <ul>
                <li>abc@gmail.com_mybook</li>
                <li>xyz@gmail.com_mybook (if applicable)</li>
            </ul>
        </li>
    </ul>

    <h3>3. Download Feature</h3>

    <ul>
        <li>Based on the search result, users should be able to select and download files.</li>
    </ul>

    <h2>Hosting the Application with Nginx</h2>

    <p>Please refer to the provided document on how to host the application using Nginx. You can use any tool to host the application, but Nginx is recommended for its ease of use and scalability.</p>

    <h2>Getting Started</h2>

    <ol>
        <li>Clone this repository to your local machine:
            <pre><code>git clone &lt;repository_url&gt;</code></pre>
        </li>
        <li>Set up AWS credentials using the AWS CLI or environment variables.</li>
        <li>Install the necessary Python packages using pip:
            <pre><code>pip install boto3 flask</code></pre>
        </li>
        <li>Run the application:
            <pre><code>python app.py</code></pre>
        </li>
        <li>Access the application through a web browser using the EC2 instance's public IP address.</li>
    </ol>

    <h2>Directory Structure</h2>

    <ul>
        <li><code>app.py:</code> The main Python script for the Document Store application.</li>
        <li><code>templates/:</code> Contains HTML templates for the application's web pages.</li>
        <li><code>static/:</code> Contains static files (e.g., CSS, JavaScript).</li>
        <li><code>README.md:</code> This readme file.</li>
    </ul>

   

    <p></p>
</body>

</html>
