<?php
/**
 * @author 		CB_WP_Theme
 * @package 	WooCommerce/Templates
 * @version     2.0.0
 */

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly


?>
<form method="get">
	<select name="perpage" class="results-per-page">
		<?php foreach ( $perpage_options as $id => $name ){ ?>
			<option value="<?php echo $id; ?>"<?php echo selected( (String)$perpage, (String)$id, false ) ?>><?php echo $name; ?></option>
		<?php } ?>
	</select>
	<?php
		// Keep query string vars intact
		foreach ( $_GET as $key => $val ) {
			if ( 'perpage' == $key )
				continue;
			
			if (is_array($val)) {
				foreach($val as $innerVal) {
					echo '<input type="hidden" name="' . esc_attr( $key ) . '[]" value="' . esc_attr( $innerVal ) . '" />';
				}
			
			} else {
				echo '<input type="hidden" name="' . esc_attr( $key ) . '" value="' . esc_attr( $val ) . '" />';
			}
		}
	?>
</form>