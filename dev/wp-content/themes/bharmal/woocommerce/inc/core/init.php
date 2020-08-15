<?php

function wc_theme_support(){
	add_theme_support('woocommerce');
}
add_action( 'cb_add_theme_support', 'wc_theme_support' );

function cb_wc_process_less_import_dirs( $dirs ){
	$dirs[] = WC()->plugin_path().'/assets/css';
	$dirs[] = locate_template('woocommerce/assets/css');
	return $dirs;
}
add_filter( 'cb_process_less_import_dirs', 'cb_wc_process_less_import_dirs', 1 )

?>