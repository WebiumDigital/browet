import Ember from 'ember';

export default Ember.Component.extend({
  session: Ember.inject.service('session'),
  actions: {
    login() {
      this.sendAction('login');
    },
    logout() {
      this.get('session').invalidate();
    }
  }
});