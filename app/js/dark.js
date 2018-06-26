if (settings.get('ui.dark', false)) {
  $('body')
      .addClass('bg-dark')
      .addClass('text-light');
  $('.navbar-light')
      .removeClass('navbar-light')
      .removeClass('bg-light')
      .addClass('navbar-dark')
      .addClass('bg-dark');
}