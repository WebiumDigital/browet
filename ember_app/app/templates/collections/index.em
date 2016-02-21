.layout.main.container-fluid
  table
    = each model as |collection|
      =partial 'collections/collection'