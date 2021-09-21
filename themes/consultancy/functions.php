<?php
  // Setup
   define('CONSULTANCY_DEV_MODE', true);

   // Includes
   include (get_theme_file_path('/includes/front/enqueue.php'));
   include (get_theme_file_path('/includes/front/setup.php'));
   // include (get_theme_file_path('/includes/customizer/theme-customizer.php'));
   // include (get_theme_file_path('/includes/customizer/contact.php'));

   // Hooks
    add_action('wp_enqueue_scripts', 'consultancy_enqueue');
    // add_action('after_setup_theme', 'consultancy_setup_theme');
    // add_action('customize_register', 'consultancy_customize_register');
     

     // Menu Item Alteration
    // function add_menu_list_item_class($classes, $item, $args) {
    //   if (property_exists($args, 'list_item_class')) {
    //       $classes[] = $args->list_item_class;
    //   }
    //   return $classes;
    // }
    // add_filter('nav_menu_css_class', 'add_menu_list_item_class', 1, 3);
  
    //Menu anchor tag
    // function add_menu_link_class( $atts, $item, $args ) {
    //   if (property_exists($args, 'link_class')) {
    //     $atts['class'] = $args->link_class;
    //   }
    //   return $atts;
    // }
    // add_filter( 'nav_menu_link_attributes', 'add_menu_link_class', 1, 3 );