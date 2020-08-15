<?php
/**
 * CB_WC_Widget_Products_In_Category
 *
 * @author 		WooThemes
 * @category 	Widgets
 * @package 	WooCommerce/Widgets
 * @version 	1.6.4
 * @extends 	WP_Widget
 */

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

class CB_WC_Widget_Products_In_Category extends WP_Widget {

	var $woo_widget_cssclass;
	var $woo_widget_description;
	var $woo_widget_idbase;
	var $woo_widget_name;

	/**
	 * constructor
	 *
	 * @access public
	 * @return void
	 */
	function __construct() {

		/* Widget variable settings. */
		$this->woo_widget_idbase = 'cb_wc_products_in_category';
		$this->woo_widget_name = __( 'CB WooCommerce Products in Category', 'woocommerce' );
		$this->woo_widget_description = __( 'Display a list of your products in specific category.', 'woocommerce' );
		$this->woo_widget_cssclass = 'woocommerce '.$this->woo_widget_idbase;

		/* Widget settings. */
		$widget_ops = array(
			'classname' => $this->woo_widget_cssclass,
			'description' => $this->woo_widget_description
		);

		/* Create the widget. */
		$this->WP_Widget($this->woo_widget_idbase, $this->woo_widget_name, $widget_ops);

		add_action( 'save_post', array( $this, 'flush_widget_cache' ) );
		add_action( 'deleted_post', array( $this, 'flush_widget_cache' ) );
		add_action( 'switch_theme', array( $this, 'flush_widget_cache' ) );
	}


	/**
	 * widget function.
	 *
	 * @see WP_Widget
	 * @access public
	 * @param array $args
	 * @param array $instance
	 * @return void
	 */
	function widget( $args, $instance ) {
		global $woocommerce;

		$cache = wp_cache_get($this->woo_widget_idbase, 'widget');

		if ( !is_array($cache) ) $cache = array();

		if ( isset($cache[$args['widget_id']]) ) {
			echo $cache[$args['widget_id']];
			return;
		}

		ob_start();
		extract($args);

		$title = apply_filters('widget_title', empty($instance['title']) ? __('Products in Category', 'woocommerce' ) : $instance['title'], $instance, $this->id_base);
		
		if ( !$number = (int) $instance['number'] )
			$number = 10;
		else if ( $number < 1 )
			$number = 1;
		else if ( $number > 15 )
			$number = 15;

    	$query_args = array(
    		'posts_per_page' => $number,
    		'post_status' 	 => 'publish',
    		'post_type' 	 => 'product',
    		'no_found_rows'  => 1,
    		'tax_query'      => array(
    			array(
    				'taxonomy'	=> 'product_cat',
    				'field'		=> 'slug',
    				'terms'		=> $instance['terms']
    			)
    		)
    	);

    	$query_args['meta_query'] = $woocommerce->query->get_meta_query();

		$r = new WP_Query($query_args);

		if ( $r->have_posts() ) {

			echo $before_widget;

			if ( $title )
				echo $before_title . $title . $after_title;

			echo '<ul class="products '.$this->woo_widget_idbase.'">';

				while ($r->have_posts()) : $r->the_post(); global $product; 

					wc_get_template_part( 'content', 'product' );

				endwhile;

			echo '</ul>';

			echo $after_widget;
		}

		$content = ob_get_clean();

		if ( isset( $args['widget_id'] ) ) $cache[$args['widget_id']] = $content;

		echo $content;

		wp_cache_set($this->woo_widget_idbase, $cache, 'widget');
	}


	/**
	 * update function.
	 *
	 * @see WP_Widget->update
	 * @access public
	 * @param array $new_instance
	 * @param array $old_instance
	 * @return array
	 */
	function update( $new_instance, $old_instance ) {
		$instance = $old_instance;
		$instance['title'] = strip_tags($new_instance['title']);
		$instance['number'] = (int) $new_instance['number'];
		$instance['terms'] = $new_instance['terms'];



		$this->flush_widget_cache();

		$alloptions = wp_cache_get( 'alloptions', 'options' );
		if ( isset($alloptions[$this->woo_widget_idbase]) ) delete_option($this->woo_widget_idbase);

		return $instance;
	}


	/**
	 * flush_widget_cache function.
	 *
	 * @access public
	 * @return void
	 */
	function flush_widget_cache() {
		wp_cache_delete( $this->woo_widget_idbase, 'widget' );
	}


	/**
	 * form function.
	 *
	 * @see WP_Widget->form
	 * @access public
	 * @param array $instance
	 * @return void
	 */
	function form( $instance ) {
		$title = isset($instance['title']) ? esc_attr($instance['title']) : '';
		
		if ( !isset($instance['number']) || !$number = (int) $instance['number'] ) $number = 5;
		$selected_terms = $instance['terms'];

		$categories = $this->woocommerce_product_dropdown_categories( $selected_terms );

?>
		<p><label for="<?php echo $this->get_field_id('title'); ?>"><?php _e( 'Title:', 'woocommerce' ); ?></label>
		<input class="widefat" id="<?php echo esc_attr( $this->get_field_id('title') ); ?>" name="<?php echo esc_attr( $this->get_field_name('title') ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>" /></p>

		<p><label for="<?php echo $this->get_field_id('number'); ?>"><?php _e( 'Number of products to show:', 'woocommerce' ); ?></label>
		<input id="<?php echo esc_attr( $this->get_field_id('number') ); ?>" name="<?php echo esc_attr( $this->get_field_name('number') ); ?>" type="text" value="<?php echo esc_attr( $number ); ?>" size="3" /></p>

		<p><label for="<?php echo $this->get_field_id('terms'); ?>"><?php _e( 'Categories:', 'woocommerce' ); ?></label>
		<select multiple="multiple" class="widefat" id="<?php echo esc_attr( $this->get_field_id('terms') ); ?>" name="<?php echo esc_attr( $this->get_field_name('terms') ); ?>[]">
			<?php if($categories['terms']) { echo wc_walk_category_dropdown_tree( $categories['terms'], 0, $categories['r'] ); } ?>
		</select>
<?php

	}

	function woocommerce_product_dropdown_categories( $selected = array() ) {
		global $wp_query, $woocommerce;

		include_once( $woocommerce->plugin_path() . '/includes/walkers/class-product-cat-dropdown-walker.php' );

		$orderby = 'order';
		$r = array();
		$r['pad_counts']    = 1;
		$r['hierarchical']  = 1;
		$r['hide_empty']    = 0;
		$r['show_count']    = 1;
		$r['selected']      = $selected;

		$r['menu_order'] = false;

		if ( $orderby == 'order' )
			$r['menu_order'] = 'asc';
		elseif ( $orderby )
			$r['orderby'] = $orderby;

		$terms = get_terms( 'product_cat', $r );

		return array('terms' => $terms, 'r' => $r);
	}
}