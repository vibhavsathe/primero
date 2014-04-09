RapidFTR::Application.configure do

    # Settings specified here will take precedence over those in config/environment.rb

    # The production environment is meant for finished, "live" apps.
    # Code is not reloaded between requests
    config.cache_classes = true

    # Log error messages when you accidentally call methods on nil.
    config.whiny_nils = false

    # Full error reports are disabled and caching is turned on
    config.consider_all_requests_local = false
    config.action_controller.perform_caching             = true

    # See everything in the log (default is :info)
    config.log_level = :error

    # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
    # the I18n.default_locale when a translation can not be found)
    config.i18n.fallbacks = true

    config.assets.debug = true

    # For nginx:
    # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect'

    ENV['SOLR_PORT'] = "9995"

end
