//= require jquery
//= require jquery_ujs
//= require_tree .


$(document).ready(function () {
  var y = new Date().getFullYear();
  var m = new Date().getMonth();
  var d = new Date().getDay();
  $('#task_date_year option').each(function() {
    if (this.value < y) {
      this.remove();
    };
  })
})