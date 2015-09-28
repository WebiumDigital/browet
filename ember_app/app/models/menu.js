import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  slug: DS.attr('string'),
  items: DS.hasMany('linkable', {polymorphic:true})
});
