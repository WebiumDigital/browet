import ProtectedApplicationRoute from 'browet/routes/protected_application';

export default ProtectedApplicationRoute.extend({
  model(params) {
    return this.store.findRecord('menu', params.id);
  },
  afterModel(model) {
    model.reload();
  },
  setupController(controller, model) {
    controller.set('model', model);
    controller.set('collections', this.store.findAll('collection'));
    controller.set('categories', this.store.findAll('category'));
  }
});
