`import Ember from 'ember'`

ProductsController = Ember.Controller.extend
  queryParams: ["page"]
  page: 1
  pageBinding: Ember.computed.alias("model.page")
  perPageBinding: Ember.computed.alias("model.perPage")
  totalPages:  Ember.computed.alias("model.totalPages")

`export default ProductsController`