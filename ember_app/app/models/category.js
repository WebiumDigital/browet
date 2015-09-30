import DS from 'ember-data';
import MenuLinkable from 'browet/models/menu_linkable';

export default MenuLinkable.extend({
  name: DS.attr('string'),
  slug: DS.attr('string'),
  collections: DS.hasMany('collection')
});
