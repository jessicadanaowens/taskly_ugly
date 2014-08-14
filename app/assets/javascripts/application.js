//= require jquery
//= require jquery_ujs



$(document).ready(function () {

//  $('.special-date').datepicker({
//    'format': 'm/d/yyyy',
//    'autoclose': true
//  });

  var y = new Date().getFullYear();
  var m = new Date().getMonth();
  var d = new Date().getDay();
  $('#task_date_year option').each(function () {
    if (this.value < y) {
      this.remove();
    }
  });

  var modals = $('.task-list .modal');
  modals.hide();

  var arrows = $('.task-list .arrow_img');

  arrows.on('click', function () {
    var arrow = $(this);
    var tasks = arrow.parents('.task-list').find('.modal');

    if (tasks.is(":visible")) {
      arrow.removeClass('rotate');
      tasks.hide();
    } else {
      modals.hide('slow');
      arrows.removeClass('rotate');
      tasks.toggle('slow');
      arrow.addClass('rotate');
    }
  })

  var delete_buttons =

//  var dueDate = $('.task-list .modal .content_panel span');
//
//  dueDate(function (){
//    date = $(this)
//
//    if (date:not(:contains("hour"){
//      var background = date.parent('.task-list').child('.task_list_task span');
//      background.css("background", "orange");
//    })
//
//  })





  setTimeout(function(){
    $('.notice').remove();
  }, 5000);

  var xButton = $( '.notice img' );

  xButton.on('click', function() {
    $('.notice').remove();
  })



  $(function() {
    $( "#datepicker" ).datepicker({altFormat: "yy-mm-dd"});
  });


  $('input[type="submit"]').attr('disabled','disabled');
  $('input[type="submit"]').addClass('disabled_button');

  $('input[type="text"]').keyup(function() {
    if($(this).val() != '') {
      $('input[type="submit"]').removeAttr('disabled');
      $('input[type="submit"]').removeClass('disabled_button');
    } else {
      $('input[type="submit"]').attr('disabled','disabled');
      $('input[type="submit"]').addClass('disabled_button');
    }
  });





})






