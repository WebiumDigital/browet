import Ember from 'ember';

export default Ember.Controller.extend({
  pageTitle: 'Категории',
  actions: {
    save() {
      this.get('model').set('collections', this.get('collections'));
      this.get('model').save().then(() => {
        this.transitionToRoute('categories.index');
      });
    }
  },
  collections: Ember.computed.map('model.collections', item => item)
});