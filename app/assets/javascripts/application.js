// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .
//= require bootstrap
$(document).on("click", ".add_fields", function() {
  var association = $(this).attr("name");
  var regexp = new RegExp("new_" + association, "g");
  var new_id = new Date().getTime();
  $(this).parent().before(window[association + "_fields"].replace(regexp, new_id));
  return false;
});

$(document).on("click", ".delete_fields", function() {
  $(this).parent().find("input[type=hidden]").val("true");
  $(this).closest(".fields").hide();
  return false;
});
