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

    .menu_items
      =each model.items as |item|
        .menu_item
          =ember-selectize content=itemTypes optionValuePath="content" optionLabelPath="content" selection=item.constructor.modelName
          =ember-selectize content=collections optionValuePath="content" optionLabelPath="content"
      =each collections as |collection|
        = collection.name
    .fields
      .field
        input.ui.green.submit.button.submitbox name="commit" type="submit" value="{{t 'defaults.actions.save'}}" /