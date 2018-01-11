$(document).ready(function() {
  $(".trigger").on("click", function() {
    $("h1").text("" + Math.random());
  });
});
