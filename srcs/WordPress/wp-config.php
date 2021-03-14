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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'peacover' );

/** MySQL database password */
define( 'DB_PASSWORD', 'peacover' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define('AUTH_KEY',         'h$>-uMJp%[,.Y5aSi}=EADeZS4Y`mW<;E+Gdr+8}_cp-k(x89]jA!KEqa ^nX$Wx');
define('SECURE_AUTH_KEY',  '*S}t:Q8;WP?OI}*6i8-=>J|3wYipG]<jJ0<l_jnw3d5Euxj34Gbu.vrg%(y&O[{0');
define('LOGGED_IN_KEY',    'm^lHj 4a;.Oc=v|`x8lf^P|nx*_XVwp6+64{je:A>.hhU_,an)f|ixQP@Z(m[q3Q');
define('NONCE_KEY',        'MK_N$Bc{N}$+=P}uSt4Y|S;3!;[!?;&f#^34S11> P@%ZEF?.8L/*|J{cE#Ce-+1');
define('AUTH_SALT',        'V&Fr,u+t[8#ejg^^zi$<B76xl+{cjl91^S)ReD|;I.RL1HxYjgE?0a[O>bf7_[%:');
define('SECURE_AUTH_SALT', 'jRVr-8j~noHToY$rR>iBJJqmEPGaMYR.q`h;^zwAkBIab4CB&K1aA/mrb2.i^Zyx');
define('LOGGED_IN_SALT',   '.tDCDERV&i`mfybH2|i?N(%l2]tS!n&5@8XHa_BroGgcYK OP=,=-e2eobeg<c#S');
define('NONCE_SALT',       'dl0!3kt}w1_r(yTqh:?RE{^(l&0W<(hn0.RV:^g;HsiJ!}yXTJM:$5]B5foLLb>+');

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
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';