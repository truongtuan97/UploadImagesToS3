CarrierWave.configure do |config|
	config.fog_credentials = {
		:provider => 'AWS',
		:aws_access_key_id => Rails.application.secrets.S3_KEY,
		:aws_secret_access_key => Rails.application.secrets.S3_SECRET_KEY
	}
	config.fog_directory = Rails.application.secrets.S3_BUCKET
end