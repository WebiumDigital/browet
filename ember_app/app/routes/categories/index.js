import ProtectedApplicationRoute from 'browet/routes/protected_application';

export default ProtectedApplicationRoute.extend({
  menuTemplateName: 'categories/index_menu',
  model() {
    return this.store.findAll('category');
  }
});
