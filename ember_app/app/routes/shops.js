import ProtectedRoute from 'browet/routes/protected';

export default ProtectedRoute.extend({
  model() {
    return this.store.findAll('shop');
  }
});