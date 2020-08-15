jQuery(document).ready(function($) {

	$('select.results-per-page').change(function(){
		$(this).closest('form').submit();
	})

});