<?php
/**
 * @author 		CB_WP_Theme
 * @package 	WooCommerce/Templates
 * @version     2.0.0
 */

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

?>
<ul class="account-links">
	<?php if ( is_user_logged_in() ) { ?>
		<li><a href="<?php echo get_permalink( woocommerce_get_page_id( 'myaccount' ) ); ?>" title="<?php _e('My Account','woothemes'); ?>"><?php _e('My Account','woothemes'); ?></a></li>
		<li><a href="<?php echo get_permalink( woocommerce_get_page_id( 'logout' ) ); ?>" title="<?php _e('Logout','woothemes'); ?>"><?php _e('Logout','woothemes'); ?></a></li>
	<?php } else { ?>
		<li><a href="<?php echo get_permalink( woocommerce_get_page_id( 'myaccount' ) ); ?>" title="<?php _e('Login / Register','woothemes'); ?>"><?php _e('Login / Register','woothemes'); ?></a></li>
	<?php } ?>	
</ul>