<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'bharmal' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '!8)D~l6X=P3o1oHej85Y![`u[;wRn)9@iv{X31?E*&qx[yv^Yq t3X6jKZ0%tSaj' );
define( 'SECURE_AUTH_KEY',  '6Y9Tg,qza%2SA,Po%-Q/iBI[Z7;k-j-Ys=I{On` hig>*28#hu)Dm/Y}j,Bc1KBD' );
define( 'LOGGED_IN_KEY',    '_tU{AJ4mz6 P?{O2-S?s#4zaaIqs5{3jAD:|?%x$>Y5unD/^8#Zz`jjKJn)-?iVr' );
define( 'NONCE_KEY',        'o.FgkZM|gxicz!SJXt+@KpvW*.qpc08K+jd|Ww@QK3h_A2(1?]q^2ukmeV3w+.G}' );
define( 'AUTH_SALT',        'f(!Kp{Yq<JCy>vRV*tw^G3i:wTJW3zE9P:=_5.&HQ-WYPWO{9|U&|7nY2[fH]dF^' );
define( 'SECURE_AUTH_SALT', '2$H&n.8KbvZ(1P~h}($IhAJ~k82iXH&fUth7!*#ZW1J%8I%{c!Q+?q,>{h=n/cb7' );
define( 'LOGGED_IN_SALT',   '2v!5V%-Ix/P{*>r+AkE;q1-.>ny<EemBsj|eHRL)5)cxr+82DY]j :D`)-;riE|5' );
define( 'NONCE_SALT',       'C7]q;AK8!U(%CTR/|QYRe`v}*lhBpBxr!5QMk=YfrBW@fPpjn#jHFWpw0c)emq6j' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
