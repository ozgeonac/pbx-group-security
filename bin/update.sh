BUCKET_NAME="pbx-group-security.com-cdn"

hugo

# with delete
aws s3 sync --acl "public-read" --sse "AES256" public/ s3://$BUCKET_NAME --delete

./bin/s3-sync.sh
