//= require jquery
//= require jquery_ujs

function create_input() {

  $('.value').each (function(index) {
    $(this).parent('div').append('<input type="text" name="value" class="input-value"/>');
    $(this).parent('div').children('input').hide();
  });

  $('.value').click(function () {
    $(this).parent('div').children('input').val($(this).html());
    $(this).hide();
    $(this).parent('div').children('input').show();
    $(this).parent('div').children('input').focus();
  });

   $('.input-value').blur(function () {
     if ($(this).parent('div').children('.value').html() != $(this).val()) {
       $(this).parent('div').children('.value').html($(this).val());
       //ajax_save($(this).parent('span').attr('class'), $(this).val(), $(this).parents('div').attr('id') );
     }
     $(this).hide();
     $(this).parent('div').children('.value').show();
  });

  $('.input-value').bind('keypress', function(e) {
    var code = (e.keyCode ? e.keyCode : e.which);
    if(code == 13) { //Enter keycode
      $(this).blur();
    }
  });
}

$(document).ready(function () {
  create_input();
});