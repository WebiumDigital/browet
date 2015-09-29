import ProtectedApplicationRoute from 'browet/routes/protected_application';

export default ProtectedApplicationRoute.extend({
  model() {
    return this.store.createRecord('category');
  },
  setupController: function(controller, model) {
    controller.set('model', model);
    controller.set('collections', this.store.findAll('collection'));
  }
});
