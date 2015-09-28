import DS from 'ember-data';

export default DS.Model.extend({
  item_id: DS.attr('number'),
  item_type: DS.attr('string')
});
