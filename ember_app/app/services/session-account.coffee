`import Ember from 'ember'`
`import DS from 'ember-data'`

SessionAccountService = Ember.Service.extend
  session:     Ember.inject.service('session')
  store:       Ember.inject.service()
  accountName: Ember.computed.alias('session.data.secure.account.name')
#  account: Ember.computed('session.data.authenticated.account_id', ->
#    const accountId = @get('session.data.authenticated.account_id')
#    if (!Ember.isEmpty(accountId))
#      DS.PromiseObject.create
#        promise: @get('store').find('account', accountId)
#  )



`export default SessionAccountService`