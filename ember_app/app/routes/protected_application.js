import Ember from 'ember';
import AuthenticatedRouteMixin from 'ember-simple-auth/mixins/authenticated-route-mixin';

export default Ember.Route.extend(AuthenticatedRouteMixin,{
  menuTemplateName: null,
  renderTemplate() {
    this.render('layouts/application', {into: 'application'});
    if (this.menuTemplateName!=null)
      this.render(this.menuTemplateName, {into: 'layouts/application', outlet: 'right_menu'});
    this.render({into: 'layouts/application'});
  }
});