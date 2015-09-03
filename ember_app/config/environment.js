/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'browet',
    environment: environment,
    baseURL: '/',
    locationType: 'auto',
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },

    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
    }
  };

  ENV['ember-simple-auth'] = {
    base: {
      store: 'session-store:local-storage'
    },
    authorizer: 'simple-auth-authorizer:oauth2-bearer'
  };


  ENV.i18n = {
    defaultLocale: 'ru'
  };

  if (environment === 'development') {
    // ENV.APP.LOG_RESOLVER = true;
    // ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    // ENV.APP.LOG_VIEW_LOOKUPS = true;
    ENV['ember-simple-auth']['oauth2'] = {
      serverTokenEndpoint: 'http://browet.local:3000/api/frontend/oauth/token'
    };
    //ENV['ember-simple-auth']['crossOriginWhitelist']=['*'];
    ENV.apiHost = 'http://browet.local:3000';
    //ENV.contentSecurityPolicy = {
    //  'connect-src': "'self' http://browet.local browet.local:3000 browet.local:4200 browet.local:49152 ws://browet.local:49152/livereload",
    //  'script-src': "'self' 'unsafe-eval' browet.local:49152"
    //}
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.baseURL = '/';
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
  }

  if (environment === 'production') {

  }

  return ENV;
};
