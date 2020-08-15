<?php
/**
 * Single Product Stock Label
 *
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     1.6.4
 */

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

?>
<?php if($stock && $stock < 5) { ?>
	<span class="stock-left"><?php _e( $stock.' Left', 'cbwptheme') ?></span>
<?php } ?>