`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'logout-button', 'Integration | Component | logout button', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{logout-button}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#logout-button}}
      template block text
    {{/logout-button}}
  """

  assert.equal @$().text().trim(), 'template block text'
