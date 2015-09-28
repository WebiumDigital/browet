import ProtectedApplicationRoute from 'browet/routes/protected_application';

export default ProtectedApplicationRoute.extend({
  model() {
    return this.store.createRecord('category');
  },
  setupController: function(controller, model) {
    controller.set('model', model);
    controller.set('availableCollections', this.store.findAll('collection'));
  }
});
