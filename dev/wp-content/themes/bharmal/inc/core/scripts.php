<?php

/**
 * Adds style
 *
 * @since cb 1.4.2
 */
function cb_style( $id = NULL, $options = NULL, $priority = 10 ){
	return cb_asset($id, $options, $priority, 'styles');
}

/**
 * Adds script
 *
 * @since cb 1.4.2
 */
function cb_script( $id = NULL, $options = NULL, $priority = 10 ){
	return cb_asset($id, $options, $priority, 'scripts');
}

/**
 * Adds asset
 *
 * @since cb 1.4.2
 */
function cb_asset( $id = NULL, $options = NULL, $priority = 10, $key = NULL ){
	global $cb_assets;
	if( $id ){
		$cb_assets[ $key ][ $priority ][ $id ] = $options;
		return true;
	}
	return false;
}

/**
 * Returns assets
 *
 * @since cb 1.4.2
 */
function cb_get_assets($key){
	global $cb_assets;

	$assets = array();

	if( isset($cb_assets[$key]) ) {
		ksort($cb_assets[$key]);
		foreach ($cb_assets[$key] as $priority => $raw_assets) {
			foreach ($raw_assets as $id => $asset) {
				$assets[$id] = $asset;
			}
		}
	}

	return $assets;
}

function cb_process_less( $less, $css ){

	if( file_exists( $less ) ) {
		$less = new lessc( $less );

		$less->setImportDir( apply_filters( 'cb_process_less_import_dirs', array( locate_template('assets/css') ) ) );
		
		$compiled_css = $less->parse();
		$compiled_css = CssMin::minify( $compiled_css );

		if( $compiled_css ) {
			file_put_contents( $css, $compiled_css );
			return true;
		}
	}
	return false;
}

/**
 * Enqueues scripts and styles for front-end.
 *
 * @since cb 1.0
 */
function cb_scripts_styles() {

	$cb_styles = cb_get_assets('styles');
	$cb_scripts = cb_get_assets('scripts');


	// Process styles
	foreach ($cb_styles as $handle => $value) {

		if(is_array($value)){

			$value_default = array(
				'handle' => $handle,
				'src' => NULL,
				'deps' => NULL,
				'ver' => NULL,
				'media' => NULL,
				'condition' => true,
				'external' => false,
				'register' => true,
				'enqueue' => true,
			);

			$list = array_merge($value_default, $value);

			//Add theme url function only if asset is not external
			if( ! $list['external'] && $list['register'] ){
				
				$list['file'] = locate_template( $list['src'] );
				$list['src'] = cb_theme_url( $list['src'] );

				if( ! $list['file'] ){
					$list['condition'] = false;
				}
			}

			if( preg_match('/\.less$/', $list['src'] ) ) {

				$list['css_file'] = preg_replace( '/\.less$/', '.css', $list['file'] );


				if( ( defined('DEV_MODE') && DEV_MODE ) || !file_exists( $list['css_file'] ) || fileatime( $list['file'] ) <= fileatime( $list['css_file'] ) ){
					cb_process_less( $list['file'], $list['css_file'] );
				}

				$list['src'] = preg_replace('/\.less$/', '.css', $list['src']);
			}


			$list = apply_filters('cb_prepare_styles', $list);

			if($list['condition']) {
				if($list['register']){
					wp_register_style($list['handle'], $list['src'], $list['deps'], $list['ver'], $list['media']);
				}
				if( $list['enqueue'] ){
					wp_enqueue_style($list['handle']);
				}
			}
		} elseif($handle && $value) {
			wp_enqueue_style($handle);
		} elseif($value === FALSE) {
			wp_dequeue_style($handle);
		}
	}

	// Process scripts
	foreach ($cb_scripts as $handle => $value) {
		if(is_array($value)){
			$value_default = array(
				'handle' => $handle,
				'src' => NULL,
				'deps' => NULL,
				'ver' => NULL,
				'in_footer' => NULL,
				'condition' => true,
				'external' => false,
				'register' => true,
				'enqueue' => true,
			);
			$list = array_merge($value_default, $value);

			//Add theme url function only if asset is not external
			if(!$list['external'] && $list['register']){
				if( ! locate_template( $list['src'] ) ){
					$list['condition'] = false;
				}
				$list['src'] = cb_theme_url( $list['src'] );
			}

			$list = apply_filters( 'cb_prepare_scripts', $list );

			if($list['condition']) {
				if( $list['register'] ){
					wp_register_script($list['handle'], $list['src'], $list['deps'], $list['ver'], $list['in_footer']);
				}
				if( $list['enqueue'] ){
					wp_enqueue_script($list['handle']);
				}
			}
		} elseif($handle && $value) {
			wp_enqueue_script($handle);
		} elseif($value === FALSE) {
			wp_dequeue_script($handle);
		}
	}
}
add_action( 'wp_enqueue_scripts', 'cb_scripts_styles', 11 );



