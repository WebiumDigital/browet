`import ProtectedRoute from 'browet/routes/protected'`

DashboardRoute = ProtectedRoute.extend(
  {
    model: ->
      @store.find('dashboard', '')
#      @store.findAll('dashboard')
#        .then (records)->
#          records.get('firstObject')
    renderTemplate: ->
      @render('layouts/application', {into: 'application'})
      @render({into: 'layouts/application'})
  }
)

`export default DashboardRoute`
