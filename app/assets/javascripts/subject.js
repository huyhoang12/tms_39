$(document).on("click", ".add_fields", function() {
  var association = $(this).attr("name");
  var regexp = new RegExp("new_" + association, "g");
  var new_id = new Date().getTime();
  $(this).parent().before(window[association + "_fields"].replace(regexp, new_id));
  return false;
});

$(document).on("click", ".delete_fields", function() {
  $(this).parent().find("input[type=hidden]").val("1");
  $(this).closest(".fields").hide();
  return false;
});
