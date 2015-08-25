`import Ember from 'ember'`

LoginFormComponent = Ember.Component.extend
  session:        Ember.inject.service('session')
  sessionAccount: Ember.inject.service('session-account')

  actions:
    authenticate: ->
      _this = @
      data = @getProperties('identification', 'password')
      @get('session').authenticate('authenticator:oauth2', data).catch (reason)->
        _this.set('errorMessage', reason.error)

`export default LoginFormComponent`