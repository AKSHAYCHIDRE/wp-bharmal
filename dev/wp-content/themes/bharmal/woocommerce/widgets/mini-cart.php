<?php global $woocommerce; ?>
<div class="mini-cart">
	<a class="cart-link" href="<?php echo $woocommerce->cart->get_cart_url(); ?>" title="<?php _e('View your shopping cart', 'woothemes'); ?>">
		<?php if($woocommerce->cart->cart_contents_count){ ?>
			<?php echo sprintf(_n('%d item', '%d items', $woocommerce->cart->cart_contents_count, 'woothemes'), $woocommerce->cart->cart_contents_count);?> - <?php echo $woocommerce->cart->get_cart_total(); ?>
		<?php } else {
			_e('0 Items');
		} ?>
	</a>
</div>