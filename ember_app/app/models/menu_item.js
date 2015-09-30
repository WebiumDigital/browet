import DS from 'ember-data';

export default DS.Model.extend({
  menu: DS.belongsTo('menu', {inverse: 'menu_items'}),
  itemType: DS.attr('string'),
  item: DS.belongsTo('menu_linkable', {polymorphic:true}),
  isCollection: Ember.computed('itemType', function(){
    return this.get('itemType')=='collection';
  }),
  isCategory: Ember.computed('itemType', function(){
    return this.get('itemType')=='category';
  })
});
