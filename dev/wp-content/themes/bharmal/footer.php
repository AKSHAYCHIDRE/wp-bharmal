<?php
/**
 * The template for displaying the footer
 *
 * Contains footer content and the closing of the #main and #page div elements.
 *
 * @package WordPress
 * @subpackage Twenty_Thirteen
 * @since Twenty Thirteen 1.0
 */
?>
				
				</div>
			</div><!-- #main -->
			<div class="clear"></div>
			<footer id="colophon" class="site-footer" role="contentinfo">
				<div class="container">
					<div class="footer-widgets">
						<?php dynamic_sidebar( 'footer-sidebar' ); ?>
						<div class="clear"></div>
					</div>
					<div class="copyright">
					&copy; Copyright <?php echo date('Y');?> All rights reserved | <a href="<?php echo home_url( '/' ); ?>"><?php bloginfo( 'name' ); ?></a>
					
						| Website Design by <a href="" target="_blank"></a>
					
					</div>
				</div>
			</footer><!-- #colophon -->
		</div>
	</div><!-- #page -->
	<script type="text/javascript" src="<?php echo cb_theme_url('assets/js/bootstrap.min.js') ?>"></script>
	<?php wp_footer(); ?>
</body>
</html>