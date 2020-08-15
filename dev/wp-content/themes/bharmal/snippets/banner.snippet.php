<?php 
	// BOF Gallery: gallery
	global $cb_gallery, $post;
	wp_reset_query();
	$attachments = $cb_gallery->getAttachments('banner');
	if( !$attachments->post_count ){
		$attachments = $cb_gallery->getAttachments('banner', 'post', array(), 2);
	}
	$counter = 0;
?>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
  	<?php 
	  	while ($attachments->have_posts()) {
		$attachments->the_post();
	?>
    <li data-target="#carousel-example-generic" data-slide-to="<?php echo $counter ?>" class="<?php if($counter == 0) : echo 'active'; endif; ?>"></li>

    <?php 
    	$counter++;
		} 
	?>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
  	<?php 
	  	echo $counter1;
	  	while ($attachments->have_posts()) {
		$attachments->the_post();
	 ?>
        <div class="item <?php if($counter1 == 0) : echo 'active'; endif; ?>">
            <img src="<?php echo $post->cb_gallery->size->full->src; ?>" alt="<?php the_title(); ?>" />
			<?php if($post->post_content){ ?>
				<div class="carousel-caption">
					<div class="banner-text site-width">
						<?php echo $post->post_content; ?>
					</div>
				</div>
			<?php } ?>
		</div>								
	<?php
		$counter1++;
		}
	?>
  </div>
  <!-- Controls -->
  <!-- <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a> -->
</div>
<?php wp_reset_query(); ?>