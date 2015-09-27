import Ember from 'ember';

export default Ember.Controller.extend({
  i18n: Ember.inject.service(),
  pageTitle: 'Категории',
  actions: {
    save() {
      this.get('model').set('collections', this.get('collections'));
      this.get('model').save().then(() => {
        this.transitionToRoute('categories.index');
      });
    },
    destroy() {
      if (confirm(this.get('i18n').t("defaults.actions.destroy_confirmation")))
      {
        this.get('model').destroyRecord();
        this.transitionToRoute('categories.index');
      }
    }
  },
  collections: Ember.computed.map('model.collections', item => item)
});