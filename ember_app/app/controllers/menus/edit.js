import Ember from 'ember';

export default Ember.Controller.extend({
  i18n: Ember.inject.service(),
  pageTitle: 'Менюхи',
  actions: {
    save() {
      this.get('model').save().then(() => {
        this.transitionToRoute('menus.index');
      });
    },
    destroy() {
      if (confirm(this.get('i18n').t("defaults.actions.destroy_confirmation")))
      {
        this.get('model').destroyRecord();
        this.transitionToRoute('menus.index');
      }
    }
  },
  itemTypes: ['category', 'collection', 'product'],
  //availableCollections: Ember.computed('model.items', function(){
  //  return this.store.findAll('collection');
  //}),
  //collections: Ember.computed.map('model.collections', item => item)
  //itemCollection: Ember.computed('model.items', function(){
  //  return this.store.findAll('collection');
  //})
  //itemTypes: [{id:'category', name:'category'},{id:'collection', name:'collection'},{id:'product', name:'collection'}]

  //items: Ember.computed.map('model.items', item => item)
});