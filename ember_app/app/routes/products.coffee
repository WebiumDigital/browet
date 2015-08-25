`import ProtectedRoute from 'browet/routes/protected'`
`import RouteMixin from 'ember-cli-pagination/remote/route-mixin'`

ProductsRoute = ProtectedRoute.extend(
  RouteMixin,
  {
    perPage: 10
    model: (params) ->
      @findPaged('product', params)
  }
)


`export default ProductsRoute`
