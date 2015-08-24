`import Ember from 'ember'`
`import RouteMixin from 'ember-cli-pagination/remote/route-mixin'`

ProductsRoute = Ember.Route.extend(RouteMixin,
  perPage: 10,
  model: (params) ->
    @findPaged('product',params)
)

`export default ProductsRoute`
