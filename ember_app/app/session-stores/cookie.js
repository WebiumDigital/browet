import CookieStore from 'ember-simple-auth/stores/cookie';
import config from '../config/environment';

export default CookieStore.extend({
  cookieName: 'browet:session',
  cookieExpirationTime: (30 * 24 * 60 * 60),
  cookieDomain: config.cookieDomain
});