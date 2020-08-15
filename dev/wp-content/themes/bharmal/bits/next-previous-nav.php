<?php

global $wp_query;

// Don't print empty markup if there's only one page.
if ( $wp_query->max_num_pages < 2 ){
	return;
}
?>
<nav class="navigation paging-navigation" role="navigation">
	<h1 class="screen-reader-text"><?php _e( 'Posts navigation' ); ?></h1>
	<div class="nav-links">

		<?php if ( get_next_posts_link() ) : ?>
			<div class="nav-previous">
				<?php next_posts_link( __( '<span class="meta-nav">&larr;</span> Older posts' ) ); ?>
			</div>
		<?php endif; ?>

		<?php if ( get_previous_posts_link() ) : ?>
			<div class="nav-next">
				<?php previous_posts_link( __( 'Newer posts <span class="meta-nav">&rarr;</span>' ) ); ?>
			</div>
		<?php endif; ?>

	</div><!-- .nav-links -->
</nav><!-- .navigation -->