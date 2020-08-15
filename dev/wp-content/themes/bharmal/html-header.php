<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=0"/>
	<title><?php wp_title( '|', true, 'right' ); ?></title>

	<link rel="icon" href="<?php echo cb_theme_url('favicon.png'); ?>">
	<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<script type="text/javascript" src="https://unpkg.com/aos@2.3.0/dist/aos.js"></script>
	<script type="text/javascript" src="https://unpkg.com/aos@2.3.0/dist/aos.js"></script>
  <link rel="stylesheet" type="text/css" href="https://unpkg.com/aos@2.3.0/dist/aos.css">
	<?php wp_head(); ?>
</head>