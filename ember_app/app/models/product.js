import DS from 'ember-data';
import Linkable from 'browet/models/linkable';

export default Linkable.extend({
  title: DS.attr('string'),
  description: DS.attr('string'),
  brand: DS.attr('string'),
  status: DS.attr('string'),
  availability: DS.attr('string')
});