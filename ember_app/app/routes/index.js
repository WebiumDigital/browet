import Ember from 'ember';

export default Ember.Route.extend({
  beforeModel() {
    var subdomian = window.location.hostname.split('.')[0];
    if (subdomian == 'browet')
      this.transitionTo('shops');
    else
      this.transitionTo('dashboard');
  }
});
