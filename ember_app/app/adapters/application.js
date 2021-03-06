import ActiveModelAdapter from 'active-model-adapter';
import DataAdapterMixin from 'ember-simple-auth/mixins/data-adapter-mixin';
import config from '../config/environment';

export default ActiveModelAdapter.extend(DataAdapterMixin, {
  host: config.api.host,
  namespace: config.api.namespace,
  authorizer: 'authorizer:application',
  headers: {'Shop-Domain': window.location.hostname.split('.')[0]}
});