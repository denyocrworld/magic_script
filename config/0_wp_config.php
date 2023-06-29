<?php
define( 'WP_CACHE', true );
//define( 'WP_DEBUG', true );

define('FS_METHOD', 'direct');
define('FTP_BASE', '/var/www/html');
define('FTP_USER', 'denyocr');
define('FTP_PASS', 'JagoFilzi3sfFlutterEncr3ptedPassw0erd');
define('FTP_HOST', 'jagoflutter.com');
define('FTP_SSL', false);
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'master_db' );

/** Database username */
define( 'DB_USER', 'rootx' );

/** Database password */
define( 'DB_PASSWORD', 'JagoFlutterEncr3ptedPassw0erd' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

// Block access from proxad.net domain
if (strpos($_SERVER['HTTP_HOST'], 'proxad.net') !== false) {
    die('Access denied.');
}


/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Z.KxN!SdeKaa$^#kO<)]P(wQ]U1GHk_ASPuye-9D@R16&S^l;7$YRbyGk:fWG2kx' );
define( 'SECURE_AUTH_KEY',  '}D^9@Wjv@<pv*`U9,4kR[F1tH>B|K=d]iQck-FUjjh;h&iuzoaHI/2DTxFBuD:YG' );
define( 'LOGGED_IN_KEY',    '>+Yla<{tI pI>~*;(<%LU2S83[gAX^kgWgf0qJ:./Mw|f!U!8t5@pndp#tzR6]BB' );
define( 'NONCE_KEY',        'VE0s(T5EjCsw;~)P$>=M*h.?d&qS01|Y@;N7L^_4),oC-76Cgg&ArDZ[@s2-@BiT' );
define( 'AUTH_SALT',        '7Y W<R[A,iRO`]13rm.WPc$CsX9hkgS1ZcK+Bx?Cjpu-@#SsX%oO_SO{/v0#B2B+' );
define( 'SECURE_AUTH_SALT', 'Jx_,{cH45}pm}v4 !4{4n8&y1?6P:^YiUw(t{28 lDv C^`7 _R1nA0UwC)7KeKJ' );
define( 'LOGGED_IN_SALT',   'EbE_sJPfvUFi_K9)Rw),u2uRagLS_7_D7 d9bl4uB:<@Dqtl0jkt`Keh.UGZJcR}' );
define( 'NONCE_SALT',       'PGqhj[[o> L0GA`i-/P0()r#,;p{S0V5|*UPP_.3)$K_nLf;511&KFr{lL5%x40F' );

/**#@-*/

/**
 * WordPress database table prefix.
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
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';