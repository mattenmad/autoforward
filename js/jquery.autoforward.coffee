# Reference jQuery
$ = jQuery

# Adds plugin object to jQuery
$.fn.extend

# Main function of jQuery AutoForward
  autoforward: (options) ->
    # Default settings
    settings =
      target: '_blank'
      timer: 5
      debug: false

    # Merge default settings with options.
    settings = $.extend settings, options

    # Console logger
    log = (type, msg) ->
      console[type] msg if settings.debug && console?[type]? && type in ['log', 'warn', 'error', 'info']

    # _Insert magic here._
    return @each ()->
      log "Preparing magic show."
      # You can use your settings in here now.
      log "Option 1 value: #{settings.option1}"