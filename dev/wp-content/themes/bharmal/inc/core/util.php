<?php

function cbp(){
	$a = func_get_args();
	foreach ($a as $v) {
		echo '<code><pre>';
			print_r($v);
		echo '</pre></code>';
	}
}

function cb_theme_url($path = ''){
	return esc_url(trailingslashit(get_stylesheet_directory_uri()).$path);
}

function add_body_class(){
	static $body_classes;

	if( !isset($body_classes) ){
		$body_classes = array();
	}

	$classes = func_get_args();

	return $body_classes = array_merge( $body_classes, $classes );
}

function add_google_fonts(){
	
	$fonts = func_get_args();
	
	if( is_array( $fonts ) && !empty($fonts) ) {
		foreach ( $fonts as $key => $font ) {
			cb_style( 'google-font-'.$key, array(
				'src' => $font,
				'external' => true
			), 5 );
		}
	}

}


function cb_wp_theme_config( $key, $value = NULL ){
	static $config;

	if( !isset( $config ) ){
		$config = array();
	}

	if( isset( $config[ $key ] ) && $value === NULL ){
		return $config[ $key ];
	}

	if( $value != NULL ){
		return $config[ $key ] = $value;
	}

	return false;
}



?>