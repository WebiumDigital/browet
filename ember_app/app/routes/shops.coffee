`import ProtectedRoute from 'browet/routes/protected'`

ShopsRoute = ProtectedRoute.extend(
  {
    model: ->
      @store.findAll('shop')
  }
)

`export default ShopsRoute`
