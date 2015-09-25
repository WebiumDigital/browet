import Ember from 'ember';

export default Ember.Controller.extend({
  i18n: Ember.inject.service(),
  pageTitle: 'Категории',
  names: ["Yehuda", "Tom"],
  actions: {
    save() {
      this.get('model').save();
    },
    destroy() {
      if (confirm(this.get('i18n').t("defaults.actions.destroy_confirmation")))
      {
        this.get('model').destroyRecord();
        this.transitionToRoute('categories.index');
      }
    }
  }
});