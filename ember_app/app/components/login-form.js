import Ember from 'ember';

export default Ember.Component.extend({
  session:        Ember.inject.service('session'),
  sessionAccount: Ember.inject.service('session-account'),
  actions: {
    authenticate() {
      let data = this.getProperties('identification', 'password');
      this.get('session').authenticate('authenticator:oauth2', data).catch((reason) => {
        this.set('errorMessage', reason.error);
      });
    }
  }
});