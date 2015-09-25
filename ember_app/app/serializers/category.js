import DS from 'ember-data';
import ActiveModelSerializer from "active-model-adapter/active-model-serializer";

export default ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin, {
  attrs: {
    collections: { serialize: 'ids' }
  }
});