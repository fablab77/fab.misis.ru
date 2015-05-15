$(document).ready(function() {
  $('[data-svg]').each(function(i, val) {
    var element = $(this);
    $.ajax({
      url: element.data('svg'),
      cache: true,
      async: false,
      dataType: 'html',
      success: function(data) {
        element.replaceWith(data);
      }
    });
  });
});