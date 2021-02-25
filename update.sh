pulumi up -y
aws s3 sync ./public s3://$(pulumi stack output | grep bucket_name | cut -b 18-)/ 