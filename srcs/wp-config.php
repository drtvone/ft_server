<?php
// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'rturnip' );

/** MySQL database password */
define( 'DB_PASSWORD', '1613' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts
 */
define( 'AUTH_KEY',         'my unique phrase' );
define( 'SECURE_AUTH_KEY',  'my unique phrase' );
define( 'LOGGED_IN_KEY',    'my unique phrase' );
define( 'NONCE_KEY',        'my unique phrase' );
define( 'AUTH_SALT',        'my unique phrase' );
define( 'SECURE_AUTH_SALT', 'my unique phrase' );
define( 'LOGGED_IN_SALT',   'my unique phrase' );
define( 'NONCE_SALT',       'my unique phrase' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 */
$table_prefix = 'wp_';

/**
 * WordPress debugging mode.
 */
define( 'WP_DEBUG', false );

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname(__FILE__) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once (ABSPATH . 'wp-settings.php');