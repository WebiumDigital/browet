`import Ember from 'ember'`

LoginLogoutButtonComponent = Ember.Component.extend
  session:        Ember.inject.service('session')

  actions:
    login: ->
      @sendAction('login')

    logout: ->
      @get('session').invalidate()


`export default LoginLogoutButtonComponent`