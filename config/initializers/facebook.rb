facebook_settings = YAML.load_file('/config/facebook.yml')[Rails.env]
FACEBOOK_APP_ID = facebook_settings['app_id']
FACEBOOK_SECRET_KEY = facebook_settings['secret_key']
