import Ember from 'ember';

export default Ember.Controller.extend({
  i18n: Ember.inject.service(),
  pageTitle: 'Менюхи',
  actions: {
    save() {
      this.get('model').save().then(() => {
        this.store.unloadAll('menu_item');
        this.transitionToRoute('menus.index');
      });
    },
    destroy() {
      if (confirm(this.get('i18n').t("defaults.actions.destroy_confirmation")))
      {
        this.get('model').destroyRecord();
        this.transitionToRoute('menus.index');
      }
    },
    addMenuItem() {
      this.store.createRecord('menu_item', {menu: this.get('model'), itemType:'category'});
    },
    removeItem(menu_item) {
      menu_item.destroyRecord();
    }
  },
  itemTypes: [{id:'category', text: 'category'}, {id:'collection', text: 'collection'}]
});