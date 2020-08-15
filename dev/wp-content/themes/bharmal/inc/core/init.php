<?php

function cb_wp_theme_setup() {

	add_theme_support( 'automatic-feed-links' );

	// Add post thumbnails (http://codex.wordpress.org/Post_Thumbnails)
	add_theme_support( 'post-thumbnails' );

	set_post_thumbnail_size(624, 9999); // Unlimited height, soft crop
	// add_image_size('category-thumb', 300, 9999); // 300px wide (and unlimited height)

	// Add post formats (http://codex.wordpress.org/Post_Formats)
	add_theme_support('post-formats', apply_filters( 'cb_post_formats', array() ) );

	// Adds Menus
	do_action( 'cb_add_theme_support' );
	do_action( 'cb_add_nav_menus' );
}
add_action( 'after_setup_theme', 'cb_wp_theme_setup' );

function cb_widgets_init() {
	// Adds Sidebars
	do_action( 'cb_add_sidebars' );
}
add_action('widgets_init', 'cb_widgets_init');

// Excerpt support for pages
function cb_support_excerpt(){
	add_post_type_support( 'page', 'excerpt' );
}
add_action('init', 'cb_support_excerpt');

// Makes our wp_nav_menu() fallback -- wp_page_menu() -- show a home link.
function cbwptheme_page_menu_args($args) {
	if (!isset($args['show_home'])) {
		$args['show_home'] = true;
	}
	return $args;
}
add_filter('wp_page_menu_args', 'cbwptheme_page_menu_args');

//Text Widget Shortcode
add_filter('widget_text', 'do_shortcode');

// Creates a nicely formatted and more specific title element text for output in head of document, based on current view.
function cb_wp_title($title, $sep) {
	global $paged, $page;
	
	if (is_feed()) {
		return $title;
	}
	
	// Add the site name.
	$title .= get_bloginfo('name');
	
	// Add the site description for the home/front page.
	$site_description = get_bloginfo('description', 'display');
	if ($site_description && (is_home() || is_front_page())) {
		$title = "$title $sep $site_description";
	}
	
	// Add a page number if necessary.
	if ($paged >= 2 || $page >= 2) {
		$title = "$title $sep " . sprintf(__('Page %s', 'cbwptheme'), max($paged, $page));
	}
	
	return $title;
}
add_filter('wp_title', 'cb_wp_title', 10, 2);


// Improve image quality
function cb_jpeg_quality(){
	return 100;
}
add_filter('jpeg_quality', 'cb_jpeg_quality');

// Removes styles added by contact form 7 styles
function cbwptheme_remove_wpcf7_styles(){
	wp_dequeue_style('contact-form-7');
	wp_dequeue_style('contact-form-7-rtl');
}
add_action('wpcf7_enqueue_styles', 'cbwptheme_remove_wpcf7_styles');


// Add Body Class
function cb_add_body_classes( $classes ) {

	$classes = array_merge( $classes, add_body_class() );

	// Single or multiple authors.
	if (!is_multi_author()) {
		$classes[] = 'single-author';
	}

	// Add Browser and OS specific classes.
	if ( cb_get_browser_platform() ) {
		$classes[] = 'os-' . cb_get_browser_platform();
	}

	if ( cb_get_browser() ) {
		$classes[] = 'b-' . cb_get_browser();
	}

	if ( cb_get_browser_version() ) {
		$version = explode('.', cb_get_browser_version() );
		$classes[] = 'bv-' . $version[0];
	}

	return $classes;
}
add_filter('body_class', 'cb_add_body_classes');

function cb_nav_menu_add_first_and_last( $items ) {

	$colms = array(2, 3, 4, 5, 6);

	$hierarchy = array();

	foreach( $items as $k => $item ){
		$hierarchy[ $item->menu_item_parent ][] = $k;
	}

	// Add First Last Classes
	foreach ( $hierarchy as $group ) {
		$last_key = count( $group )-1;
		foreach ( $group as $key => $item_key ) {
			if( $key === 0 ){
				$items[ $item_key ]->classes[] = 'menu-item-first';
			}
			if( $last_key === $key ){
				$items[ $item_key ]->classes[] = 'menu-item-last';
			}
		}
	}

	// Add Column Classes
	foreach ( $colms as $col ) {
		$last_mod = $col-1;
		foreach ( $hierarchy as $group ) {
			if( count( $group ) >= $col ) {
				foreach ( $group as $key => $item_key ) {
					$mod = $key%$col;
					if( $mod === 0 ){
						$items[ $item_key ]->classes[] = 'cf'.$col;
					} elseif ( $mod === $last_mod ){
						$items[ $item_key ]->classes[] = 'cl'.$col;
					}
				}
			}
		}
	}

	return $items;
}

add_filter('wp_nav_menu_objects', 'cb_nav_menu_add_first_and_last', 0, 2 );