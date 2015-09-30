import DS from 'ember-data';
import ActiveModelSerializer from "active-model-adapter/active-model-serializer";

export default ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin, {
  attrs: {
    menu_items: { serialize: 'records', deserialize: 'records' },
    collections: { serialize: 'ids' }
  }
});