import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  description: DS.attr('string'),
  brand: DS.attr('string'),
  status: DS.attr('string'),
  availability: DS.attr('string')
});