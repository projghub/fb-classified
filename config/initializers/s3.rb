s3_settings = YAML.load_file(Rails.root.join('config', 's3.yml'))[Rails.env]
S3_KEY = s3_settings['access_key_id']
S3_SECRET_KEY = s3_settings['secret_access_key']
S3_BUCKET = s3_settings['bucket']

