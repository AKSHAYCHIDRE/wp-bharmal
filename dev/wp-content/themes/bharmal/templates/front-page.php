<?php
/**
* Template Name:front Page
*
* Description:front page layout
*
* @package WordPress
* @subpackage CB_WP_Theme
* @since CbWpTheme 1.0
*/
add_body_class('full-width');
get_header(); ?>
<div id="primary" class="site-content">
    <?php the_content(); ?>   
    	<div class="container p-g">
    		<div class="row">
    			<div class="categories-wrapper">
	                <?php 
	              $nav_menu = wp_get_nav_menu_object(22);
	             ?> 
	            <?php wp_nav_menu(array('menu' => $nav_menu->name, 'Product Categories', 'menu_class' => 'therapies-menu', 'walker' =>  new Home_Page_Walker()) ) ;?> 
	                <div class="clear"></div>
        	   </div>
            </div>
    	</div>
        <div class="categories-tabing-section">
           <div class="tabing-wrapper">
                <h2>New Products</h2>
                <h4>New Arrivals of Week </h4>
                <div class="container">
                    <div class="row">
                         <?php echo do_shortcode( '[wtcpl-product-cat]' ); ?>
                    </div>
                </div>
           </div>
        </div>
</div>
<?php //get_sidebar(); ?>
<?php get_footer(); ?>