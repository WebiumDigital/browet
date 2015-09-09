`import Ember from 'ember'`

LogoutButtonComponent = Ember.Component.extend
  session:        Ember.inject.service('session')

  actions:
    logout: ->
      @get('session').invalidate()

`export default LogoutButtonComponent`
