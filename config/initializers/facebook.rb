facebook_settings = YAML.load_file(Rails.root.join('config', 'facebook.yml'))[Rails.env]
FACEBOOK_APP_ID = facebook_settings['app_id']
FACEBOOK_SECRET_KEY = facebook_settings['secret_key']
REDIRECT_URI = facebook_settings['callback_url']
SCOPE = 'publish_stream'
