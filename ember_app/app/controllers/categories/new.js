import Ember from 'ember';

export default Ember.Controller.extend({
  pageTitle: 'Категории',
  actions: {
    save() {
      this.get('model').save().then(() => {
        this.transitionToRoute('categories.index');
      });
    }
  }
});