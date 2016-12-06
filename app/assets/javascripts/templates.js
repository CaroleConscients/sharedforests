$(document).ready(function() {
  $('.template-link').on("click", function(e){
    e.preventDefault();
    var templateName = $(this).data("name");

    $(".certificate-banner").removeAttr("style");
    $(".certificate-border").addClass("certificate-" + templateName);
  });
});
