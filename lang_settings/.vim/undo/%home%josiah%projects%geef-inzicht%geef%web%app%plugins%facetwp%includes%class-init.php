Vim�UnDo� h_��^,^vw��7s(�Yf�r�u���F�   �                                   f���    _�                              ����                                                                                                                                                                                                                                                                                                                                                             f���    �      �   �   �       function __construct() {   4        add_action( 'init', [ $this, 'init' ], 20 );   Z        add_filter( 'woocommerce_is_rest_api_request', [ $this, 'is_rest_api_request' ] );       }               /**   &     * Initialize classes and WP hooks        */       function init() {               // i18n   !        $this->load_textdomain();               // is_plugin_active   A        include_once( ABSPATH . 'wp-admin/includes/plugin.php' );               $includes = [               'api/fetch',               'api/refresh',               'class-helper',               'class-ajax',               'class-request',               'class-renderer',               'class-diff',               'class-indexer',               'class-display',               'class-builder',               'class-overrides',               'class-settings',               'class-upgrade',               'functions'   
        ];       '        foreach ( $includes as $inc ) {   ;            include ( FACETWP_DIR . "/includes/$inc.php" );   	        }               new FacetWP_Upgrade();            new FacetWP_Overrides();       6        FWP()->api          = new FacetWP_API_Fetch();   3        FWP()->helper       = new FacetWP_Helper();   5        FWP()->facet        = new FacetWP_Renderer();   5        FWP()->settings     = new FacetWP_Settings();   1        FWP()->diff         = new FacetWP_Diff();   4        FWP()->indexer      = new FacetWP_Indexer();   4        FWP()->display      = new FacetWP_Display();   4        FWP()->builder      = new FacetWP_Builder();   4        FWP()->request      = new FacetWP_Request();   1        FWP()->ajax         = new FacetWP_Ajax();               // integrations   P        include( FACETWP_DIR . '/includes/integrations/searchwp/searchwp.php' );   V        include( FACETWP_DIR . '/includes/integrations/woocommerce/woocommerce.php' );   F        include( FACETWP_DIR . '/includes/integrations/edd/edd.php' );   F        include( FACETWP_DIR . '/includes/integrations/acf/acf.php' );   L        include( FACETWP_DIR . '/includes/integrations/wp-cli/wp-cli.php' );   R        include( FACETWP_DIR . '/includes/integrations/wp-rocket/wp-rocket.php' );               // update checks   ?        include( FACETWP_DIR . '/includes/class-updater.php' );               // hooks   <        add_action( 'admin_menu', [ $this, 'admin_menu' ] );   G        add_action( 'wp_enqueue_scripts', [ $this, 'front_scripts' ] );   S        add_filter( 'redirect_canonical', [ $this, 'redirect_canonical' ], 10, 2 );   `        add_filter( 'plugin_action_links_facetwp/index.php', [ $this, 'plugin_action_links' ] );       $        do_action( 'facetwp_init' );       }               /**        * i18n support        */        function load_textdomain() {               // admin-facing   (        load_plugin_textdomain( 'fwp' );               // front-facing   ]        load_plugin_textdomain( 'fwp-front', false, basename( FACETWP_DIR ) . '/languages' );       }               /**   )     * Register the FacetWP settings page        */       function admin_menu() {   j        add_options_page( 'FacetWP', 'FacetWP', 'manage_options', 'facetwp', [ $this, 'settings_page' ] );       }               /**        * Enqueue jQuery        */       function front_scripts() {   L        if ( 'yes' == FWP()->helper->get_setting( 'load_jquery', 'yes' ) ) {   *            wp_enqueue_script( 'jquery' );   	        }       }               /**   '     * Route to the correct edit screen        */       function settings_page() {   @        include( FACETWP_DIR . '/templates/page-settings.php' );       }               /**   7     * Prevent WP from redirecting FWP pager to /page/X        */   B    function redirect_canonical( $redirect_url, $requested_url ) {   d        if ( false !== strpos( $redirect_url, FWP()->helper->get_setting( 'prefix' ) . 'paged' ) ) {               return false;   	        }           return $redirect_url;       }               /**   1     * Add "Settings" link to plugin listing page        */   ,    function plugin_action_links( $links ) {   I        $settings_link = admin_url( 'options-general.php?page=facetwp' );   b        $settings_link = '<a href=" ' . $settings_link . '">' . __( 'Settings', 'fwp' )  . '</a>';   0        array_unshift( $links, $settings_link );           return $links;       }               /**   P     * WooCommerce 3.6+ doesn't load its frontend includes for REST API requests   A     * We need to force-load these includes for FacetWP refreshes   2     * See includes() within class-woocommerce.php        *    V     * This code isn't within /integrations/woocommerce/ because it runs *before* init        *         * @since 3.3.10        */   .    function is_rest_api_request( $request ) {   G        if ( false !== strpos( $_SERVER['REQUEST_URI'], 'facetwp' ) ) {               return false;   	        }           return $request;       }5��           �       �              �      �      5��