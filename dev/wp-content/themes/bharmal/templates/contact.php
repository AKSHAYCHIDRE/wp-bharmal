<?php
/**
* Template Name:Contact page
*
* Description:Contact page
*
* @package WordPress
* @subpackage CB_WP_Theme
* @since CbWpTheme 1.0
*/
add_body_class('full-width');
get_header(); ?>
<div id="primary" class="site-content">
    <?php the_content(); ?>
    <div class="contact-page">
        <div class="container">
            <h2>Reach Us</h2>
            <hr/>
            <p>Class aptent taciti sociosqu ad litora torquent per conubia</p>
            <p>nostra. Quisque a vehicula magna.</p>
            <div class="contact-widget " data-aos="fade-up">
                <div class="row">
                    <?php dynamic_sidebar('contact sidebar'); ?>
                </div>
            </div>
        </div>
        <div class="map" data-aos="fade-up">
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d472.91534008828637!2d73.85596231347354!3d18.51431296593925!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2c06e5c83d6b5%3A0xdf6a2ec96dad7480!2sBharmal+Brothers!5e0!3m2!1sen!2sin!4v1555700897772!5m2!1sen!2sin" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
        <div class="contact-form" data-aos="fade-up">
            <h2>Get In Touch</h2>
            <hr/>
            <p>Class aptent taciti sociosqu ad litora torquent per conubia</p>
            <p>nostra. Quisque a vehicula magna.</p>
            <div class="container">
                <?php echo do_shortcode('[contact-form-7 id="26" title="Contact form 1"]'); ?>
            </div>
        </div>
    </div>
    
</div>
<?php //get_sidebar(); ?>
<?php get_footer(); ?>