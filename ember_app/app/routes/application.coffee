`import Ember from 'ember'`
`import ApplicationRouteMixin from 'ember-simple-auth/mixins/application-route-mixin'`

ApplicationRoute = Ember.Route.extend(ApplicationRouteMixin,
  {
    actions:
      transitionToLoginRoute: ->
        this.transitionTo('login');

#    renderTemplate: (controller, model)->
#      debugger
#      console.log('render main template')
#      console.log(window.location.pathname)
#      console.log(@get('controllers.application.currentPath'))
#      app = @container.lookup('controller:application')
#      console.log(app.get 'currentPath')
#      console.log(controller.container.cache['location:auto'].location.pathname)

# FIXME: сделать тут нормальную проверку
#      if (window.location.pathname=='/login')
#        @render('auth')
#      else
#        @render('application');
  }
)

`export default ApplicationRoute`
