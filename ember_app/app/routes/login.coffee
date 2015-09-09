`import Ember from 'ember'`
`import UnauthenticatedRouteMixin from 'ember-simple-auth/mixins/unauthenticated-route-mixin'`
LoginRoute = Ember.Route.extend(UnauthenticatedRouteMixin,
  {
    renderTemplate: ->
      @render('layouts/login', {into: 'application'})
      @render({into: 'layouts/login'})
  }
)

`export default LoginRoute`