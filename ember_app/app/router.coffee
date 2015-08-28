`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'login'
  @route 'protected'
  @route 'auth-error'

  @route 'about'
  @route 'products', ->
    @route 'new'

`export default Router`
