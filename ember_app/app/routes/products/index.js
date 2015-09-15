import ProtectedApplicationRoute from 'browet/routes/protected_application';
import RouteMixin from 'ember-cli-pagination/remote/route-mixin';

export default ProtectedApplicationRoute.extend(RouteMixin,{
  menuTemplateName: 'products/index_menu',
  queryParams: {
    status: {refreshModel: true}
  },
  model(params) {
    return this.findPaged('product', params)
  }
});
