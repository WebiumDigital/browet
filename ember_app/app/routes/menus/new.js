import ProtectedApplicationRoute from 'browet/routes/protected_application';

export default ProtectedApplicationRoute.extend({
  model() {
    return this.store.createRecord('menu');
  },
  setupController: function(controller, model) {
    controller.set('model', model);
    controller.set('collections', this.store.findAll('collection'));
    controller.set('categories', this.store.findAll('category'));
  }
});
