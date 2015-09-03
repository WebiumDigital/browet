`import ActiveModelAdapter from 'active-model-adapter'`
`import DataAdapterMixin from 'ember-simple-auth/mixins/data-adapter-mixin'`
`import config from '../config/environment'`

ApplicationAdapter = ActiveModelAdapter.extend(
  DataAdapterMixin,
  {
    host: config.apiHost
    namespace: 'api/frontend'
    authorizer: 'authorizer:application'
  }
)

`export default ApplicationAdapter`
