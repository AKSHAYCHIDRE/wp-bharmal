<?php
/**
* Template Name: Sitemap Page
*
* Description: Sitemap page layout
*
* @package WordPress
* @subpackage CB_WP_Theme
* @since CbWpTheme 1.0
*/

add_body_class('full-width');
get_header(); ?>

    <div id="primary" class="site-content ">
        <div id="content" class="site-width1" role="main">
            <div class="sitemap-container">
                <div class="sitemap-content">
                    <h1>Sitemap</h1>
                    <?php while ( have_posts() ) { the_post(); ?>
                    <?php get_template_part( 'content', 'page' ); ?>
                    <?php } // end of the loop. ?>

                    <?php wp_nav_menu(array('menu' => 'Sitemap', 'menu_class' => 'sitemap sitemap-nav')); ?>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
<?php //get_sidebar(); ?>
<div class="clear"></div>
<?php get_footer(); ?>