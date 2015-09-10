`import Ember from 'ember'`

ProductsIndexController = Ember.Controller.extend
  status: 1
  perPage: 10
  pageBinding: Ember.computed.alias("model.page")
  statuses: ['1','2','0','3']
  status_title: (status_id)->
    status_id
#  pageBinding: Ember.computed.alias("model.page")
#  perPageBinding: Ember.computed.alias("model.perPage")
#  totalPages:  Ember.computed.alias("model.totalPages")
  page: 1

`export default ProductsIndexController`