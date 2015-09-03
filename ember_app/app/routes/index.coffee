`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  beforeModel: ->
    subdomian = window.location.hostname.split('.')[0]
    if subdomian == 'browet'
      this.transitionTo('shops')
    else
      this.transitionTo('dashboard')

`export default IndexRoute`
