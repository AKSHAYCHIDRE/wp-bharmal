<?php

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

require locate_template( 'woocommerce/inc/core/init.php' );
require locate_template( 'woocommerce/inc/core/cleanup.php' );

// WRITE-BELOW-THIS //


// WooCommerce Style // Removed as its included in default style sheet
/*cb_style('cb-wc-style', array(
	'src' => 'woocommerce/assets/css/woocommerce.less'
));*/

cb_script( 'cb-wc-dashboard', array(
	'src' => 'woocommerce/assets/js/dashboard.js',
	'deps' => 'jquery'
));




function cb_wc_nav_menus(){

}
add_action( 'cb_add_nav_menus', 'cb_wc_nav_menus' );


function cb_wc_widgets(){
	
	$widgets = array(
		'CB_WC_Widget_Account' => 'class-cb-wc-widget-account.php',
		'CB_WC_Widget_Best_Sellers' => 'class-cb-wc-widget-best-sellers.php',
		'CB_WC_Widget_Catalog_Ordering' => 'class-cb-wc-widget-catalog-ordering.php',
		'CB_WC_Widget_Featured_Products' => 'class-cb-wc-widget-featured-products.php',
		/*'CB_WC_Widget_Price_Filter' => 'class-cb-wc-widget-price-filter.php',*/
		'CB_WC_Widget_Mini_Cart' => 'class-cb-wc-widget-mini-cart.php',
		'CB_WC_Widget_Product_Categories' => 'class-cb-wc-widget-product-categories.php',
		'CB_WC_Widget_Products_In_Category' => 'class-cb-wc-widget-products-in-category.php',
		'CB_WC_Widget_Result_Count' => 'class-cb-wc-widget-result-count.php',
		'CB_WC_Widget_Results_Per_Page' => 'class-cb-wc-widget-results-per-page.php'
	);


	foreach ( $widgets as $class => $path ) {
		require locate_template( 'woocommerce/inc/widgets/' . $path );
		register_widget( $class );
	}
	
}
add_action( 'widgets_init', 'cb_wc_widgets' );




/* Layout Hooks */
//Change position of title
remove_action('woocommerce_single_product_summary', 'woocommerce_template_single_title', 5);
add_action('woocommerce_before_single_product_summary', 'woocommerce_template_single_title', 5);

//Change position of title
remove_action( 'woocommerce_before_main_content', 'woocommerce_breadcrumb', 20);
add_action('woocommerce_before_single_product_summary', 'woocommerce_breadcrumb', 6);

remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_price', 10 );
add_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_excerpt', 10 );

remove_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_excerpt', 20 );
add_action( 'woocommerce_single_product_summary', 'woocommerce_template_single_price', 20 );


// Reposition Messages on Single Product page
remove_action( 'woocommerce_before_single_product', 'wc_print_notices', 10 );
add_action( 'woocommerce_before_single_product_summary', 'wc_print_notices', 10 );

remove_action( 'woocommerce_before_single_product_summary', 'woocommerce_show_product_sale_flash', 10 );
add_action( 'woocommerce_single_product_summary', 'woocommerce_show_product_sale_flash', 10 );
