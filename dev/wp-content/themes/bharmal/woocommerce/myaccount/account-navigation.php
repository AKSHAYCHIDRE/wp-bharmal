<?php $myaccount_link = get_permalink( wc_get_page_id( 'myaccount' ) ); ?>

<nav id="account-navigation" class="nav-menu" role="navigation">
	<ul>
		<li><a href="<?php echo $myaccount_link; ?>"><?php _e( 'My Account', 'woocommerce' ); ?></a></li>
		<li><a href="<?php echo wc_get_endpoint_url( 'edit-account', '', $myaccount_link ); ?>"><?php _e( 'Edit Account', 'woocommerce' ); ?></a></li>
		<li><a href="<?php echo wc_get_endpoint_url( 'edit-account', '', $myaccount_link ); ?>"><?php _e( 'Change Password', 'woocommerce' ); ?></a></li>
		<li><a href="<?php echo wc_get_endpoint_url( 'customer-logout', '', $myaccount_link ); ?>"><?php _e( 'Logout', 'woocommerce' ); ?></a></li>
	</ul>
</nav>