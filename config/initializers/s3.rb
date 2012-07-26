s3_settings = YAML.load_file(Rails.root.join('config', 's3.yml'))[Rails.env]
S3_KEY = s3_settings['access_key_id']
S3_SECRET_KEY = s3_settings['secret_access_key']
S3_BUCKET = s3_settings['bucket']

if Rails.env.production? 
Paperclip::Attachment.default_options.merge!({
      storage:  :s3,
      s3_credentials: { :access_key_id => S3_KEY, :secret_access_key => S3_SECRET_KEY },
      bucket: S3_BUCKET,
      path: "/:class/:id/:style/:filename"
  })
end