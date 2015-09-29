import Ember from 'ember';

export default Ember.Controller.extend({
  pageTitle: 'Категории',
  actions: {
    save() {
      this.get('model').set('collections', this.get('selectedCollections'));
      this.get('model').save().then(() => {
        this.transitionToRoute('categories.index');
      });
    }
  },
  selectedCollections: Ember.computed("model.collections", function() {
    return this.get("model.collections").map(item => item);
  })
});