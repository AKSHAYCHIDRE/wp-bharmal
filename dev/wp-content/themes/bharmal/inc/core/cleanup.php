<?php

// Remove unnecessary head meta
// @link http://wpengineer.com/1438/wordpress-header/

// Display the links to the extra feeds such as category feeds
remove_action( 'wp_head', 'feed_links_extra', 3 );

// Display the links to the general feeds: Post and Comment Feed
remove_action( 'wp_head', 'feed_links', 2 );

// Display the link to the Really Simple Discovery service endpoint, EditURI link
remove_action( 'wp_head', 'rsd_link' );

// Display the link to the Windows Live Writer manifest file.
remove_action( 'wp_head', 'wlwmanifest_link' );

// index link
remove_action( 'wp_head', 'index_rel_link' );

// prev link
remove_action( 'wp_head', 'parent_post_rel_link', 10, 0 );

// start link
remove_action( 'wp_head', 'start_post_rel_link', 10, 0 );

// Display relational links for the posts adjacent to the current post.
remove_action( 'wp_head', 'adjacent_posts_rel_link', 10, 0 );

// Display the XHTML generator that is generated on the wp_head hook, WP version
remove_action( 'wp_head', 'wp_generator' );

// Removes wp noindex meta tag
remove_action( 'wp_head', 'noindex', 1 );

//global $wp_widget_factory;
//remove_action('wp_head', array( $wp_widget_factory->widgets['WP_Widget_Recent_Comments'], 'recent_comments_style' ) );

// Remove admin bar from front-end
show_admin_bar( false );


// Remove unnecessary dashboard widgets
// @link http://www.deluxeblogtips.com/2011/01/remove-dashboard-widgets-in-wordpress.html

function cb_remove_dashboard_widgets() {
	remove_meta_box('dashboard_incoming_links', 'dashboard', 'normal');
	remove_meta_box('dashboard_plugins', 'dashboard', 'normal');
	remove_meta_box('dashboard_primary', 'dashboard', 'normal');
	remove_meta_box('dashboard_secondary', 'dashboard', 'normal');
}
add_action('admin_init', 'cb_remove_dashboard_widgets');
