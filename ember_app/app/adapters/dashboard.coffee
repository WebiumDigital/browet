`import ApplicationAdapter from 'browet/adapters/application'`
DashboardAdapter = ApplicationAdapter.extend({
  pathForType: (modelName)->
    'dashboard'
})

`export default DashboardAdapter`
