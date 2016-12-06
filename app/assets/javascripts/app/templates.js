$(document).ready(function() {
  $('.template-link').on("click", function(e){
    e.preventDefault();
    var templateName = $(this).data("name");

    // Remove default background banner image
    $(".certificate-banner").removeAttr("style");

    // Remove all classes from certificate
    $("#certificate").removeClass();
    // Re-add certificate-border class + custom template class
    $("#certificate").addClass("certificate-border certificate-" + templateName);

    // Update value of hidden template name field
    $("#certificate_template_name").val(templateName);
  });
});
