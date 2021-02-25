aws s3 rm s3://$(pulumi stack output | grep bucket_name | cut -b 18-)/ --recursive
pulumi destroy -y 
pulumi stack rm $1  