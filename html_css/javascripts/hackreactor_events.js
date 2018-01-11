$(document).ready(function() {
  // $(".faq-question").on("click", function() {
  //   $(this).next().toggleClass("hide-answer");
  // });

  $(".faq-question").on("click", function() {
    $(this).next().slideToggle("fast");
  });
});
