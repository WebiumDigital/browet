.layout.main.container
  form submit="save"
    .field
      | Title
      =each model.category.errors.name as |error|
        .error
          =error.message
      .ui.left.icon.input
        = input value=model.category.name
    .field
      | Slug
      =each model.category.errors.slug as |error|
        .error
          =error.message
      .ui.left.icon.input
        = input value=model.category.slug
    .collections
      =each model.category.collections as |collection|
        .collection
          =x-select value=collection.id.content
            =each model.collections as |available_collection|
              =x-option value=available_collection.id.content
               = available_collection.name

    .fields
      .field
        input.ui.green.submit.button.submitbox name="commit" type="submit" value="{{t 'defaults.actions.save'}}" /