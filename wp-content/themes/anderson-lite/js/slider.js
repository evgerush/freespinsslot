/*! jQuery slider.js
  Setup of the Frontpage Slider based on the FlexSlider plugin (jquery.flexslider-min.js)
  Author: Thomas W (themezee.com)
*/
jQuery(document).ready(function($) {

	/* Add flexslider to #post-slider div */ 
	$("#post-slider").flexslider({
		animation: anderson_slider_params.animation,
		namespace: "zeeflex-",
		selector: ".zeeslides > li",
		smoothHeight: true,
		controlsContainer: ".post-slider-controls",
		controlNav: "thumbnails"
	});
});