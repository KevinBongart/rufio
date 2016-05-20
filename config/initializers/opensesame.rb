require 'opensesame'

OpenSesame.configure do |config|
  config.enable       Rails.env.staging?
  config.github       ENV['GITHUB_APP_ID'], ENV['GITHUB_SECRET']
  config.organization ENV['ORGANISATION_NAME']
  config.mounted_at   '/opensesame'
end
