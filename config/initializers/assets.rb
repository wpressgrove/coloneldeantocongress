# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( donations.js pages.js admin.js jquery-ui.js timepicker.js donations.css events.css pages.css admin.css jquery-ui.css timepicker.css admin/emails.css admin/events.css admin/media.css admin/nav_tabs.css admin/pages.css admin/users.css )

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
