import Ember from 'ember';

export default Ember.Controller.extend({
  i18n: Ember.inject.service(),
  pageTitle: 'Коллекции',
  actions: {
    save() {
      this.get('model').save().then(() => {
        this.transitionToRoute('collections.index');
      });
    },
    destroy() {
      if (confirm(this.get('i18n').t("defaults.actions.destroy_confirmation")))
      {
        this.get('model').destroyRecord();
        this.transitionToRoute('collections.index');
      }
    }
  }
});