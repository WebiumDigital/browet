`import Ember from 'ember'`
`import ApplicationRouteMixin from 'ember-simple-auth/mixins/application-route-mixin'`

ApplicationRoute = Ember.Route.extend(ApplicationRouteMixin,
  {
    actions:
      transitionToLoginRoute: ->
        this.transitionTo('login')
  }
)

`export default ApplicationRoute`
