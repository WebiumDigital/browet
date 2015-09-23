import ProtectedApplicationRoute from 'browet/routes/protected_application';

export default ProtectedApplicationRoute.extend({
  model(params) {
    return this.store.findRecord('collection', params.id);
  }
});
