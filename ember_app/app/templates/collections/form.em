.layout.main.container
  form submit="save"
    .field
      |{{#each model.errors.title as |error|}}
      |  <div class="error">
      |    {{error.message}}
      |  </div>
      |{{/each}}
      .ui.left.icon.input
        = input value=model.title
    .fields
      .field
        input.ui.green.submit.button.submitbox name="commit" type="submit" value="{{t 'defaults.actions.save'}}" /