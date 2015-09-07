`import ProtectedRoute from 'browet/routes/protected'`

DashboardRoute = ProtectedRoute.extend(
  {
    model: ->
      @store.findAll('dashboard')
        .then (records)->
          records.get('firstObject')
  }
)

`export default DashboardRoute`
