import DS from 'ember-data';
import Linkable from 'browet/models/linkable';

export default Linkable.extend({
  name: DS.attr('string'),
  slug: DS.attr('string'),
  collections: DS.hasMany('collection')
});
