`import ActiveModelAdapter from 'active-model-adapter'`
`import DataAdapterMixin from 'ember-simple-auth/mixins/data-adapter-mixin'`
ApplicationAdapter = ActiveModelAdapter.extend(
  DataAdapterMixin,
  {
    authorizer: 'authorizer:application'
    namespace: '/api/frontend'
  }
)

`export default ApplicationAdapter`
