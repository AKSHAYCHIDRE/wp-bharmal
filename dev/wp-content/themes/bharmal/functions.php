<?php // Shri //

define('DEV_MODE', true);

require locate_template('/inc/core/lib.php');
require locate_template('/inc/core/util.php');
require locate_template('/inc/core/user-agent.php');
require locate_template('/inc/core/scripts.php');
require locate_template('/inc/core/cleanup.php');
require locate_template('/inc/core/init.php');
require locate_template('/inc/walkers/class-home-page-walker.php');

if( function_exists('WC') ){
	// Include WooCommerce [remove if non woocommerce theme]
	require locate_template('/woocommerce/functions.php');
}

// WRITE-BELOW-THIS //


// Styles ---------------------------------------------------------------------------

add_google_fonts(
	'https://fonts.googleapis.com/css?family=Karla:400,400i,700,700i',
	'https://fonts.googleapis.com/css?family=Oleo+Script:400,700'
);

cb_style( 'style_name', array(
	'src' => 'assets/css/style_name.css'
) );

// Loads our main stylesheet.
cb_style( 'cbwptheme-style', array(
	'src' => 'assets/css/style.less',
), 9999 );


// Scripts ---------------------------------------------------------------------------

// Add Custom JS
cb_script( 'custom-js', array(
	'src' => 'assets/js/custom.js',
) );



// Adds jQuery
cb_script( 'jquery', array(
	'register' => false
), 0 );

// Handles jQuery conflict
cb_script( 'jquery_no_conflict_reset', array(
	'src' => 'assets/js/jquery-no-conflict-reset.js'
), 0 );

// Add html 5 support for older browsers
cb_script( 'cbwptheme-html5', array(
	'src' => 'assets/js/html5.js',
	'ver' => '1.0',
	'condition' => ( cb_is_browser('msie') && cb_get_browser_version() < 9 )
), 1 );

// Adds JavaScript to pages with the comment form to support sites with threaded comments (when in use).
cb_script( 'comment-reply', array(
	'condition' => (is_singular() && comments_open() && get_option('thread_comments')),
	'register' => false
) );




// Add Sidebars
function cb_add_sidebars() {

	register_sidebar(array(
		'name' => __('Content Sidebar', 'cbwptheme'),
		'id' => 'content-sidebar',
		'description' => __('Content Sidebar', 'cbwptheme'),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>'
	));

	register_sidebar(array(
		'name' => __('Header Sidebar', 'cbwptheme'),
		'id' => 'header-sidebar',
		'description' => __('Header Sidebar', 'cbwptheme'),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>'
	));

	register_sidebar(array(
		'name' => __('Footer Sidebar', 'cbwptheme'),
		'id' => 'footer-sidebar',
		'description' => __('Footer Sidebar', 'cbwptheme'),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>'
	));
	register_sidebar(array(
		'name' => __('contact Sidebar', 'cbwptheme'),
		'id' => 'contact-sidebar',
		'description' => __('contact Sidebar', 'cbwptheme'),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>'
	));

}
add_action( 'cb_add_sidebars', 'cb_add_sidebars' );


// Add Nav Menus
function cb_add_nav_menus(){

	register_nav_menu( 'primary', __( 'Primary Menu', 'cbwptheme') );
	register_nav_menu( 'sitemap', __( 'Sitemap Menu', 'cbwptheme') );
	
}
add_action( 'cb_add_nav_menus', 'cb_add_nav_menus' );


// Post Formats
function cb_post_formats( $formats ){
	// 'aside', 'gallery', 'link', 'image', 'quote', 'status', 'video', 'audio', 'chat'
	return array();
}
add_filter( 'cb_post_formats', 'cb_post_formats', 1 );

