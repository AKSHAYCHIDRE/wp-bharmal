<?php
/**
 * CB_WC_Widget_Results_Per_Page
 *
 * @author 		CB_WP_Theme
 * @category 	Widgets
 * @package 	WooCommerce/Widgets
 * @version 	1.0
 * @extends 	WP_Widget
 */

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

class CB_WC_Widget_Results_Per_Page extends WP_Widget {

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
		$this->woo_widget_cssclass = 'woocommerce widget_results_per_page';
		$this->woo_widget_description = __( 'Results Per Page', 'woocommerce' );
		$this->woo_widget_idbase = 'cb_woocommerce_results_per_page';
		$this->woo_widget_name = __( 'CB WooCommerce Results Per Page', 'woocommerce' );

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

		add_filter( 'loop_shop_per_page', array( $this, 'getLoopShopPerPage' ), 20 );
		
		cb_script( 'cb-wc-results-per-page', array(
			'src' => 'woocommerce/js/results-per-page.js',
			'enqueue' => false,
			'deps' => array( 'jquery' ), 
			'in_footer' => true
		) );
	}

	function getLoopShopPerPage($instance = NULL){
		if( FALSE && $current_user->ID ){
			global $current_user;
			if( isset($_GET['perpage']) ){
				update_user_meta( $current_user->ID, $this->woo_widget_idbase, $_GET['perpage'] );
			}
			return get_user_meta( $current_user->ID, $this->woo_widget_idbase, true );
		} else {
			return isset($_GET['perpage']) ? $_GET['perpage'] : ( $instance != NULL && is_array($instance) ? $instance['default_perpage'] : get_option( 'posts_per_page' ) );
		}
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

		wp_enqueue_script('cb-wc-results-per-page');

		if ( !is_array($cache) ) $cache = array();

		if ( isset($cache[$args['widget_id']]) ) {
			echo $cache[$args['widget_id']];
			return;
		}

		$title = apply_filters('widget_title', $instance['title'], $instance, $this->id_base);

		ob_start();
		extract($args);

		echo $before_widget;

		if ( $title )
			echo $before_title . $title . $after_title;

		$perpage = $this->getLoopShopPerPage($instance);

		wc_get_template( 'widgets/results-per-page.php', array(
			'perpage_options' => $instance['perpage_options'],
			'perpage' => $perpage
		) );

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

		$instance['title'] = strip_tags($new_instance['title']);
		$instance['default_perpage'] = strip_tags($new_instance['default_perpage']);

		if ( isset( $new_instance['perpage_options'] ) ) {
			$perpage_options_raw = explode( "\n", $new_instance['perpage_options'] );
			$instance['perpage_options'] = array();
			foreach ($perpage_options_raw as $value) {
				if(!$value) continue;
				$value = explode('|', $value);
				if( isset($value[0]) ){
					$name = isset($value[1])  ? $value[1] : $value[0];
					$instance['perpage_options'][ intval($value[0]) ] = $name;
				}
			}
		}

		reset($instance['perpage_options']);
		$instance['default_perpage'] = $instance['default_perpage'] ? $instance['default_perpage'] : key($instance['perpage_options']);

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
		$title = isset($instance['title']) ? esc_attr($instance['title']) : __( 'Items Per Page', 'cbwptheme' );
		$perpage_options_raw = isset($instance['perpage_options']) ? $instance['perpage_options'] : array(
			'10' => '10',
			'20' => '20',
			'30' => '30',
			'40' => '40'
		);
		$default_perpage = isset($instance['default_perpage']) ? esc_attr($instance['default_perpage']) : '';
		$perpage_options = '';
		foreach ($perpage_options_raw as $key => $value) {
			$perpage_options .= $key.'|'.$value."\n";
		}

?>
		<p><label for="<?php echo $this->get_field_id('title'); ?>"><?php _e( 'Title:', 'woocommerce' ); ?></label>
		<input class="widefat" id="<?php echo esc_attr( $this->get_field_id('title') ); ?>" name="<?php echo esc_attr( $this->get_field_name('title') ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>" /></p>

		<p><label for="<?php echo $this->get_field_id('perpage_options'); ?>"><?php _e( 'Options:', 'woocommerce' ); ?></label>
		<textarea rows="5" class="widefat" id="<?php echo esc_attr( $this->get_field_id('perpage_options') ); ?>" name="<?php echo esc_attr( $this->get_field_name('perpage_options') ); ?>"><?php echo $perpage_options; ?></textarea></p>

		<p><label for="<?php echo $this->get_field_id('default_perpage'); ?>"><?php _e( 'Default:', 'woocommerce' ); ?></label>
		<input class="widefat" id="<?php echo esc_attr( $this->get_field_id('default_perpage') ); ?>" name="<?php echo esc_attr( $this->get_field_name('default_perpage') ); ?>" type="text" value="<?php echo esc_attr( $default_perpage ); ?>" /></p>
<?php
	}
}