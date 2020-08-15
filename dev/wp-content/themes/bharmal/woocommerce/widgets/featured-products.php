<?php if ($query->have_posts()) : ?>

	<?php echo $before_widget; ?>

		<?php if ( $title ) echo $before_title . $title . $after_title; ?>

		<ul class="products featured">
			<?php while ($query->have_posts()) : $query->the_post(); global $product; ?>

				<?php wc_get_template_part( 'content', 'product' ); ?>

			<?php endwhile; ?>
		</ul>

	<?php echo $after_widget; ?>

<?php endif; ?>