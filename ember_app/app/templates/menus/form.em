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

      =each model.menu_items as |menu_item|
        .menu_item
          =select-2 content=itemTypes value=menu_item.itemType searchEnabled=false optionValuePath="id"
          = if menu_item.isCategory
            =select-2 content=categories value=menu_item.item optionLabelPath="name" searchEnabled=false
          = if menu_item.isCollection
            =select-2 content=collections value=menu_item.item optionLabelPath="name" searchEnabled=false
          button{action "removeItem" menu_item} RemoveItem
      button{action "addMenuItem"} AddMenuItem
    .fields
      .field
        input.ui.green.submit.button.submitbox name="commit" type="submit" value="{{t 'defaults.actions.save'}}" /