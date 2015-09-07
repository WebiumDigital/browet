`import DS from 'ember-data'`

ShopModel = DS.Model.extend {
  name: DS.attr('string')
  link: DS.attr('string')
}

`export default ShopModel`
