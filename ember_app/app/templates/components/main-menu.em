.notice
  i
.launch
  .ui.icon.button click="toggleModal"
    i.reorder.icon
if isShowingModal
  =modal-dialog close="toggleModal" targetAttachment="center" translucentOverlay=true
    .bro.launchpad
      .bro.button
        a click="toggleModal"
          i.icon.close
      .menu
        = link-to 'products.index'
          = t 'main_menu.products'
        = link-to 'collections.index'
          = t 'main_menu.collections'