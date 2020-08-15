<?php require 'html-header.php'; ?>
<body <?php body_class(); ?>>
	<!-- site site-width -->
	<div id="page" class="">
		<div class="">
			<header id="masthead" class="site-header" role="banner">
				<!-- <div class="top-bar">
					<?php // dynamic_sidebar( 'header sidebar' ); ?>
				</div> -->
				<div class="container">
					<div class="logo ">
						<h1 class="site-title">
							<a href="<?php echo esc_url(home_url( '/' )); ?>" title="<?php echo esc_attr(get_bloginfo('name', 'display')); ?>" rel="home">
								<img src="<?php echo cb_theme_url('assets/images/logo.png') ?>" alt="<?php echo esc_attr(get_bloginfo('name', 'display')); ?>" />
							</a>
						</h1>
					</div>
					<!-- #navbar -->
					<div class="navbar-wrap">
						<nav class="navbar navbar-default">
							<div class="container-fluid">
								<div class="container">
									<div class="navbar-header">
										<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
									        <span class="sr-only">Menu</span>
									        <span class="icon-bar"></span>
									        <span class="icon-bar"></span>
									        <span class="icon-bar"></span>
								      	</button>
								    </div>

								    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
								    	<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_class' => 'nav-menu nav navbar-nav' ) ); ?>
								    </div>
								</div>
							</div><!-- /.container-fluid -->
						</nav><!-- #navbar -->
					</div>


				</div>
			</header><!-- #masthead -->

			<div id="main" class="site-main">
				<div class="">
					<?php if ( is_front_page() ) : ?>
						<?php echo do_shortcode( '[snippet banner name ="banner"]' ); ?>

						<?php //echo do_shortcode( '[snippet popup name ="popup"]' ); ?>

						<?php //echo do_shortcode( '[snippet collapse name ="collapse"]' ); ?>

						<?php //echo do_shortcode( '[snippet accordion name ="accordion"]' ); ?>
					<?php endif; ?>
				
