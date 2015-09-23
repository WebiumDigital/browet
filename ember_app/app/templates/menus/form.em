.layout.main.container
  form submit="save"
    .field
      | Title
      =each model.errors.name as |error|
        .error
          =error.message
      .ui.left.icon.input
        = input value=model.name
    .field
      | Slug
      =each model.errors.slug as |error|
        .error
          =error.message
      .ui.left.icon.input
        = input value=model.slug
    .fields
      .field
        input.ui.green.submit.button.submitbox name="commit" type="submit" value="{{t 'defaults.actions.save'}}" /