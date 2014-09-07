var $;

$ = jQuery;

$.fn.extend({
  autoforward: function(options) {
    var log, settings;
    settings = {
      target: '_blank',
      timer: 5,
      debug: false
    };
    settings = $.extend(settings, options);
    log = function(type, msg) {
      if (settings.debug && ((typeof console !== "undefined" && console !== null ? console[type] : void 0) != null) && (type === 'log' || type === 'warn' || type === 'error' || type === 'info')) {
        return console[type](msg);
      }
    };
    return this.each(function() {
      log("Preparing magic show.");
      return log("Option 1 value: " + settings.option1);
    });
  }
});
