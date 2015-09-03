`import DS from 'ember-data'`

Shop = DS.Model.extend {
  name: DS.attr('string')
  link: DS.attr('string')
}

`export default Shop`
