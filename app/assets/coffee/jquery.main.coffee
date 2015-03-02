jQuery(document).ready(() ->
	jQuery('.slider').slick(
		arrows: false,
		dots: true
	);
	jQuery('.observation').slick(
		arrows: true,
		dots: true
	);
)