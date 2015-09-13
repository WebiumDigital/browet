import Ember from 'ember';

export default Ember.Controller.extend({
  status: 1,
  page: 1,
  perPage: 10,
  pageBinding: Ember.computed.alias("model.page")
//pageBinding: Ember.computed.alias("model.page"),
//perPageBinding: Ember.computed.alias("model.perPage"),
//totalPages:  Ember.computed.alias("model.totalPages")
});