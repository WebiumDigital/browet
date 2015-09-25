import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  slug: DS.attr('string'),
  collections: DS.hasMany('collection', {embedded: 'always'})
});
