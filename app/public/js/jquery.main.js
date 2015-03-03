jQuery(document).ready(function() {
  jQuery('.slider').slick({
    arrows: false,
    dots: true
  });
  jQuery('.observation').slick({
    arrows: false,
    dots: true
  });
  jQuery('.btn.btn-menu').bind('touchstart', function() {
    jQuery('.dropped-menu').toggleClass('active');
    if (jQuery('.dropped-search').hasClass('active')) {
      return jQuery('.dropped-search').toggleClass('active');
    }
  });
  jQuery('.btn.btn-search').bind('touchstart', function() {
    jQuery(this).toggleClass('active');
    jQuery('.dropped-search').toggleClass('active');
    if (jQuery('.dropped-menu').hasClass('active')) {
      return jQuery('.dropped-menu').toggleClass('active');
    }
  });
  jQuery('.dropped-search input').on('keypress', function() {
    if (!(jQuery(this).val() === '')) {
      console.log(jQuery(this).val());
      jQuery(this).parent().parent().find('.clearform').addClass('active');
    } else {
      jQuery(this).parent().parent().find('.clearform').removeClass('active');
    }
  });
  jQuery('.clearform').bind("touchstart", function() {
    jQuery(this).parent().find("input").val('');
    console.log('test');
    return jQuery(this).removeClass('active');
  });
  jQuery('.shop-drop-down.radio').each(function() {
    var _parent;
    _parent = jQuery(this);
    _parent.find('label').on('touchstart', function() {
      _parent.find('label').removeClass('checked');
    });
  });
  jQuery('.shop-drop-down label').bind('touchstart', function() {
    jQuery(this).toggleClass('checked');
  });
  jQuery('.tab-control').bind('touchstart', function() {
    var tab;
    tab = jQuery(this).attr('href');
    jQuery(this).parent().parent().each(function() {
      jQuery(this).find(".tab-control").removeClass('active');
      return jQuery(this).find(".tab-panel").removeClass('active');
    });
    jQuery(this).addClass('active');
    jQuery(tab).addClass('active');
  });
});
