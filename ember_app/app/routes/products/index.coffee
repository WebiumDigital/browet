`import ProtectedRoute from 'browet/routes/protected'`
`import RouteMixin from 'ember-cli-pagination/remote/route-mixin'`

ProductsIndexRoute = ProtectedRoute.extend(
  RouteMixin,
  {
    queryParams:
      status:
        refreshModel: true

    model: (params) ->
      @findPaged('product', params)

    renderTemplate: ->
      @render('layouts/application', {into: 'application'})
      @render('products/index_menu', {into: 'layouts/application', outlet: 'right_menu'})
      @render({into: 'layouts/application'})
  }
)


`export default ProductsIndexRoute`
