<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'db.sqlite' );

/** Database username */
define( 'DB_USER', '' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', '' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

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
define( 'AUTH_KEY',         '#N7lQ/!~M+Zq1}x,4[&]wwt5al^TbW`cI#`vHo*G|[Dj6(0:DG[o~6[c?xd]8xbb' );
define( 'SECURE_AUTH_KEY',  '^TO:xZf`1C?#CIENP^Cbcy%:oD!NQ4xmS|vjBpGT0c07a|a`82Eyh@hcGEzm!{mq' );
define( 'LOGGED_IN_KEY',    '338xb_Iwzm/XtQK4[]Qy8T5wjYKnp3zcirtd)PL>iPd4o.x>(ea8#?53Wzf[lfv(' );
define( 'NONCE_KEY',        ',$J>+HcL?ZZ>wy<k96TV[I^zdpF{ddf`6(0-Y?4|QkMVK}<PG_0~R;$)(7FuIAXE' );
define( 'AUTH_SALT',        '*ZapT.gLU-e:+aa9p}W7knPS}nY]MW)kU/YTzMi?.?iM4FpaH{>}ZZ*lvIT,uAWW' );
define( 'SECURE_AUTH_SALT', '4b&+vJ&ii|Cw1*N?iV1@mnqw;q?AH8gd;St?(VT3x6S$C${dhU^@nWu~Q:/tn2B%' );
define( 'LOGGED_IN_SALT',   'PAlx!K#5%|hz4NKjgz.zN3Q!/U&X7vv3Aqzk,2,j,U?O3m/j;@yX6j>jhdZ#~b}S' );
define( 'NONCE_SALT',       '?M0&hHx8MYoV_[w9P{BgH@v<V02[s&Y~[JyE-T(iGMD(`kN3}PH.1/Sl4}u9)Y/y' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
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
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */

define( 'DB_DIR', __DIR__ . '/data' );
define( 'DB_FILE', 'db.sqlite' );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
