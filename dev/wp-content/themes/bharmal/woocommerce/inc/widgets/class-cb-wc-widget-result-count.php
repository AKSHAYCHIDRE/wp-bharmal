<?php
/**
 * CB_WC_Widget_Result_Count
 *
 * @author 		CB_WP_Theme
 * @category 	Widgets
 * @package 	WooCommerce/Widgets
 * @version 	1.6.4
 * @extends 	WP_Widget
 */

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

class CB_WC_Widget_Result_Count extends WP_Widget {

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
		$this->woo_widget_cssclass = 'woocommerce widget_reslut_count';
		$this->woo_widget_description = __( 'Shows the count of results.', 'woocommerce' );
		$this->woo_widget_idbase = 'cb_woocommerce_reslut_count';
		$this->woo_widget_name = __( 'CB WooCommerce Result Count', 'woocommerce' );

		/* Widget settings. */
		$widget_ops = array(
			'classname' => $this->woo_widget_cssclass,
			'description' => $this->woo_widget_description
		);

		/* Create the widget. */
		$this->WP_Widget( $this->woo_widget_idbase, $this->woo_widget_name, $widget_ops );

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

		$cache = wp_cache_get( $this->woo_widget_idbase, 'widget' );

		if ( !is_array($cache) ) $cache = array();

		if ( isset($cache[$args['widget_id']]) ) {
			echo $cache[$args['widget_id']];
			return;
		}

		ob_start();
		extract($args);
		
		echo $before_widget;
		
		woocommerce_result_count();
		
		echo $after_widget;

		$content = ob_get_clean();

		if ( isset( $args['widget_id'] ) ) $cache[$args['widget_id']] = $content;

		echo $content;

		wp_cache_set( $this->woo_widget_idbase, $cache, 'widget' );
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

		if ( isset( $new_instance['hide_free'] ) ) {
			$instance['hide_free'] = 1;
		}

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

	}
}