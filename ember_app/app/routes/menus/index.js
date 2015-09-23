import ProtectedApplicationRoute from 'browet/routes/protected_application';

export default ProtectedApplicationRoute.extend({
  menuTemplateName: 'menus/index_menu',
  model() {
    return this.store.findAll('menu');
  }
});
