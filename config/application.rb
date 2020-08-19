require_relative 'boot'

require 'rails/all'
require 'mechanize'

# url = "http://google.com"

# agent = Mechanize.new

# page = agent.get(url)

# page.links.each do |link|
#     puts
#     puts link.text
#     puts link.href
# end

# puts "Total Number of Links : #{page.links.count}"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module JobLand
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.active_job.queue_adapter = :sidekiq
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.i18n.default_locale = :en
    config.i18n.available_locales = [:en, :vi]
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.action_view.embed_authenticity_token_in_remote_forms = true
  end
end

