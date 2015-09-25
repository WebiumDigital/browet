import ProtectedApplicationRoute from 'browet/routes/protected_application';

export default ProtectedApplicationRoute.extend({
  model(params) {
    return {
      category: this.store.findRecord('category', params.id),
      collections: this.store.findAll('collection')
    };
  }
});
