import ProtectedApplicationRoute from 'browet/routes/protected_application';

export default ProtectedApplicationRoute.extend({
  model: function(params) {
    return this.store.findRecord('category', params.id);
  },
  setupController: function(controller, model) {
    controller.set('model', model);
    controller.set('availableCollections', this.store.findAll('collection'));
  }
});
