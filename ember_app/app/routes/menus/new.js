import ProtectedApplicationRoute from 'browet/routes/protected_application';

export default ProtectedApplicationRoute.extend({
  model() {
    return this.store.createRecord('menu');
  }
});
