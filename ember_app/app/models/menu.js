import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  slug: DS.attr('string'),
  menu_items: DS.hasMany('menu_item', {inverse: 'menu'})
});
