import ProtectedApplicationRoute from 'browet/routes/protected_application';

export default ProtectedApplicationRoute.extend({
  model() {
    return this.store.createRecord('collection');
  },
  actions: {
    create() {
      var self = this;
      this.get('model').save().then(function() {
        self.transitionToRoute('collections.index');
      });
    }
  }
});
