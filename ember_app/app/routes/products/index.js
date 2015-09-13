import ProtectedRoute from 'browet/routes/protected';
import RouteMixin from 'ember-cli-pagination/remote/route-mixin';

export default ProtectedRoute.extend(RouteMixin, {
  queryParams: {
    status: {refreshModel: true}
  },
  model(params) {
    return this.findPaged('product', params)
  },
  renderTemplate() {
    this.render('layouts/application', {into: 'application'});
    this.render('products/index_menu', {into: 'layouts/application', outlet: 'right_menu'});
    this.render({into: 'layouts/application'});
  }
});
