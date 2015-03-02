jQuery(document).ready(function() {
  jQuery('.slider').slick({
    arrows: false,
    dots: true
  });
  return jQuery('.observation').slick({
    arrows: true,
    dots: true
  });
});
