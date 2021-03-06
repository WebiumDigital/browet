import Ember from 'ember';
import UnauthenticatedRouteMixin from 'ember-simple-auth/mixins/unauthenticated-route-mixin';

export default Ember.Route.extend(UnauthenticatedRouteMixin, {
  renderTemplate() {
    this.render('layouts/login', {into: 'application'});
    this.render({into: 'layouts/login'});
  }
});