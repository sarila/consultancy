<?php

add_action('init', 'consultancy_service_post_type', 0);
add_action('init', 'consultancy_team_post_type', 0);
add_action('init', 'consultancy_testimonial_post_type', 0);
add_action('init', 'consultancy_sliderimage_post_type', 0);
// add_action('init', 'consultancy_whatwedo_post_type', 0);
add_action('init', 'consultancy_countries_post_type', 0);
add_action('init', 'consultancy_partner_post_type', 0);
add_action('init', 'consultancy_faq_post_type', 0);
add_action('init', 'consultancy_test_post_type', 0);


//custom post type for teams
function consultancy_team_post_type() {
    // Labels for the Post Type
    $labels = array(
        'name'                => _x( 'Teams', 'Post Type General Name', 'consultancy' ),
        'singular_name'       => _x( 'Team', 'Post Type Singular Name', 'consultancy' ),
        'menu_name'           => __( 'Teams', 'consultancy' ),
        'parent_item_colon'   => __( 'Parent Team', 'consultancy' ),
        'all_items'           => __( 'All Teams', 'consultancy' ),
        'view_item'           => __( 'View Team', 'consultancy' ),
        'add_new_item'        => __( 'Add New Team', 'consultancy' ),
        'add_new'             => __( 'Add New Team', 'consultancy' ),
        'edit_item'           => __( 'Edit Team', 'consultancy' ),
        'update_item'         => __( 'Update Team', 'consultancy' ),
        'search_items'        => __( 'Search Team', 'consultancy' ),
        'not_found'           => __( 'No Teams found', 'consultancy' ),
        'not_found_in_trash'  => __( 'Not found in trash', 'consultancy' ),
    );
    // Another Customizations
    $args = array(
        'label'   => __('Teams','consultancy' ),
        'description' => __('Teams of Consultancy', 'consultancy'),
        'labels'  => $labels,
        'supports' => array('title', 'thumbnail'),
        'hierarchical' => false,
        'public' => true,
        'show_ui' => true,
        'show_in_menus' => true,
        'show_in_nav_menus' => true,
        'show_in_admin_bar' => true,
        'menu_position' => 15,
        'menu_icon' => 'dashicons-groups',
        'can_export' => true,
        'has_archive' => true,
        'exclude_from_search' => false,
        'capability_type' => 'page',
    );
    // register the post Type
    register_post_type( 'teams', $args);
}

//custom post type for testimonials
function consultancy_testimonial_post_type() {
    // Labels for the Post Type
    $labels = array(
        'name'                => _x( 'Testimonials', 'Post Type General Name', 'consultancy' ),
        'singular_name'       => _x( 'Testimonial', 'Post Type Singular Name', 'consultancy' ),
        'menu_name'           => __( 'Testimonials', 'consultancy' ),
        'parent_item_colon'   => __( 'Parent Testimonial', 'consultancy' ),
        'all_items'           => __( 'All Testimonials', 'consultancy' ),
        'view_item'           => __( 'View Testimonial', 'consultancy' ),
        'add_new_item'        => __( 'Add New Testimonial', 'consultancy' ),
        'add_new'             => __( 'Add New Testimonial', 'consultancy' ),
        'edit_item'           => __( 'Edit Testimonial', 'consultancy' ),
        'update_item'         => __( 'Update Testimonial', 'consultancy' ),
        'search_items'        => __( 'Search Testimonial', 'consultancy' ),
        'not_found'           => __( 'No Testimonials found', 'consultancy' ),
        'not_found_in_trash'  => __( 'Not found in trash', 'consultancy' ),
    );
    // Another Customizations
    $args = array(
        'label'   => __('Testimonials','consultancy' ),
        'description' => __('Testimonials of Consultancy', 'consultancy'),
        'labels'  => $labels,
        'supports' => array('title', 'thumbnail', 'editor'),
        'hierarchical' => false,
        'public' => true,
        'show_ui' => true,
        'show_in_menus' => true,
        'show_in_nav_menus' => true,
        'show_in_admin_bar' => true,
        'menu_position' => 15,
        'menu_icon' => 'dashicons-admin-comments',
        'can_export' => true,
        'has_archive' => true,
        'exclude_from_search' => false,
        'capability_type' => 'page',
    );
    // register the post Type
    register_post_type( 'testimonials', $args);
}

//custom post type for sliderimages
function consultancy_sliderimage_post_type() {
    // Labels for the Post Type
    $labels = array(
        'name'                => _x( 'Slider Images', 'Post Type General Name', 'consultancy' ),
        'singular_name'       => _x( 'Slider Image', 'Post Type Singular Name', 'consultancy' ),
        'menu_name'           => __( 'Slider Images', 'consultancy' ),
        'parent_item_colon'   => __( 'Parent Slider Image', 'consultancy' ),
        'all_items'           => __( 'All Slider Images', 'consultancy' ),
        'view_item'           => __( 'View Slider Image', 'consultancy' ),
        'add_new_item'        => __( 'Add New Slider Image', 'consultancy' ),
        'add_new'             => __( 'Add New Slider Image', 'consultancy' ),
        'edit_item'           => __( 'Edit Slider Image', 'consultancy' ),
        'update_item'         => __( 'Update Slider Image', 'consultancy' ),
        'search_items'        => __( 'Search Slider Image', 'consultancy' ),
        'not_found'           => __( 'No Slider Images found', 'consultancy' ),
        'not_found_in_trash'  => __( 'Not found in trash', 'consultancy' ),
    );
    // Another Customizations
    $args = array(
        'label'   => __('Slider Images','consultancy' ),
        'description' => __('Slider Images of Consultancy', 'consultancy'),
        'labels'  => $labels,
        'supports' => array('title', 'thumbnail'),
        'hierarchical' => false,
        'public' => true,
        'show_ui' => true,
        'show_in_menus' => true,
        'show_in_nav_menus' => true,
        'show_in_admin_bar' => true,
        'menu_position' => 15,
        'menu_icon' => 'dashicons-format-video',
        'can_export' => true,
        'has_archive' => true,
        'exclude_from_search' => false,
        'capability_type' => 'page',
    );
    // register the post Type
    register_post_type( 'sliderimages', $args);
}

//custom post type for Services
function consultancy_service_post_type() {
    // Labels for the Post Type
    $labels = array(
        'name'                => _x( 'Services', 'Post Type General Name', 'consultancy' ),
        'singular_name'       => _x( 'Service', 'Post Type Singular Name', 'consultancy' ),
        'menu_name'           => __( 'Services', 'consultancy' ),
        'parent_item_colon'   => __( 'Parent Service', 'consultancy' ),
        'all_items'           => __( 'All Services', 'consultancy' ),
        'view_item'           => __( 'View Service', 'consultancy' ),
        'add_new_item'        => __( 'Add New Services', 'consultancy' ),
        'add_new'             => __( 'Add New Service', 'consultancy' ),
        'edit_item'           => __( 'Edit Service', 'consultancy' ),
        'update_item'         => __( 'Update Service', 'consultancy' ),
        'search_items'        => __( 'Search Services', 'consultancy' ),
        'not_found'           => __( 'No Services found', 'consultancy' ),
        'not_found_in_trash'  => __( 'Not found in trash', 'consultancy' ),
    );
    // Another Customizations
    $args = array(
        'label'   => __('Services','consultancy' ),
        'description' => __('Services of Consultancy', 'consultancy'),
        'labels'  => $labels,
        'supports' => array('title', 'thumbnail', 'editor'),
        'hierarchical' => false,
        'public' => true,
        'show_ui' => true,
        'show_in_menus' => true,
        'show_in_nav_menus' => true,
        'show_in_admin_bar' => true,
        'menu_position' => 15,
        'menu_icon' => 'dashicons-heart',
        'can_export' => true,
        'has_archive' => true,
        'exclude_from_search' => false,
        'capability_type' => 'page',
    );
    // register the post Type
    register_post_type( 'services', $args);
}

//custom post type for countries
function consultancy_countries_post_type() {
    // Labels for the Post Type
    $labels = array(
        'name'                => _x( 'Countries', 'Post Type General Name', 'consultancy' ),
        'singular_name'       => _x( 'Country', 'Post Type Singular Name', 'consultancy' ),
        'menu_name'           => __( 'Countries', 'consultancy' ),
        'parent_item_colon'   => __( 'Parent Country', 'consultancy' ),
        'all_items'           => __( 'All Countries', 'consultancy' ),
        'view_item'           => __( 'View Country', 'consultancy' ),
        'add_new_item'        => __( 'Add New Country', 'consultancy' ),
        'add_new'             => __( 'Add New Country', 'consultancy' ),
        'edit_item'           => __( 'Edit Country', 'consultancy' ),
        'update_item'         => __( 'Update Country', 'consultancy' ),
        'search_items'        => __( 'Search Country', 'consultancy' ),
        'not_found'           => __( 'No Countries found', 'consultancy' ),
        'not_found_in_trash'  => __( 'Not found in trash', 'consultancy' ),
    );
    // Another Customizations
    $args = array(
        'label'   => __('Countries','consultancy' ),
        'description' => __('Countries of Consultancy', 'consultancy'),
        'labels'  => $labels,
        'supports' => array('title', 'thumbnail', 'editor'),
        'hierarchical' => false,
        'public' => true,
        'show_ui' => true,
        'show_in_menus' => true,
        'show_in_nav_menus' => true,
        'show_in_admin_bar' => true,
        'menu_position' => 15,
        'menu_icon' => 'dashicons-location',
        'can_export' => true,
        'has_archive' => true,
        'exclude_from_search' => false,
        'capability_type' => 'page',
    );
    // register the post Type
    register_post_type( 'countries', $args);
}

//custom post type for partners
function consultancy_partner_post_type() {
    // Labels for the Post Type
    $labels = array(
        'name'                => _x( 'Partners', 'Post Type General Name', 'consultancy' ),
        'singular_name'       => _x( 'Partner', 'Post Type Singular Name', 'consultancy' ),
        'menu_name'           => __( 'Partners', 'consultancy' ),
        'parent_item_colon'   => __( 'Parent Partner', 'consultancy' ),
        'all_items'           => __( 'All Partners', 'consultancy' ),
        'view_item'           => __( 'View Partner', 'consultancy' ),
        'add_new_item'        => __( 'Add New Partner', 'consultancy' ),
        'add_new'             => __( 'Add New Partner', 'consultancy' ),
        'edit_item'           => __( 'Edit Partner', 'consultancy' ),
        'update_item'         => __( 'Update Partner', 'consultancy' ),
        'search_items'        => __( 'Search Partner', 'consultancy' ),
        'not_found'           => __( 'No Partners found', 'consultancy' ),
        'not_found_in_trash'  => __( 'Not found in trash', 'consultancy' ),
    );
    // Another Customizations
    $args = array(
        'label'   => __('Partners','consultancy' ),
        'description' => __('Partners of Consultancy', 'consultancy'),
        'labels'  => $labels,
        'supports' => array('title', 'thumbnail'),
        'hierarchical' => false,
        'public' => true,
        'show_ui' => true,
        'show_in_menus' => true,
        'show_in_nav_menus' => true,
        'show_in_admin_bar' => true,
        'menu_position' => 15,
        'menu_icon' => 'dashicons-businesswoman',
        'can_export' => true,
        'has_archive' => true,
        'exclude_from_search' => false,
        'capability_type' => 'page',
    );
    // register the post Type
    register_post_type( 'partners', $args);
}

//custom post type for faqs
function consultancy_faq_post_type() {
    // Labels for the Post Type
    $labels = array(
        'name'                => _x( 'FAQs', 'Post Type General Name', 'consultancy' ),
        'singular_name'       => _x( 'FAQ', 'Post Type Singular Name', 'consultancy' ),
        'menu_name'           => __( 'FAQs', 'consultancy' ),
        'parent_item_colon'   => __( 'Parent FAQ', 'consultancy' ),
        'all_items'           => __( 'All FAQs', 'consultancy' ),
        'view_item'           => __( 'View FAQ', 'consultancy' ),
        'add_new_item'        => __( 'Add New FAQ', 'consultancy' ),
        'add_new'             => __( 'Add New FAQ', 'consultancy' ),
        'edit_item'           => __( 'Edit FAQ', 'consultancy' ),
        'update_item'         => __( 'Update FAQ', 'consultancy' ),
        'search_items'        => __( 'Search FAQ', 'consultancy' ),
        'not_found'           => __( 'No FAQs found', 'consultancy' ),
        'not_found_in_trash'  => __( 'Not found in trash', 'consultancy' ),
    );
    // Another Customizations
    $args = array(
        'label'   => __('FAQs','consultancy' ),
        'description' => __('FAQs of Consultancy', 'consultancy'),
        'labels'  => $labels,
        'supports' => array('title', 'editor'),
        'hierarchical' => false,
        'public' => true,
        'show_ui' => true,
        'show_in_menus' => true,
        'show_in_nav_menus' => true,
        'show_in_admin_bar' => true,
        'menu_position' => 15,
        'menu_icon' => 'dashicons-insert',
        'can_export' => true,
        'has_archive' => true,
        'exclude_from_search' => false,
        'capability_type' => 'page',
    );
    // register the post Type
    register_post_type( 'faqs', $args);
}

//custom post type for test
function consultancy_test_post_type() {
    // Labels for the Post Type
    $labels = array(
        'name'                => _x( 'Tests', 'Post Type General Name', 'consultancy' ),
        'singular_name'       => _x( 'Test', 'Post Type Singular Name', 'consultancy' ),
        'menu_name'           => __( 'Tests', 'consultancy' ),
        'parent_item_colon'   => __( 'Parent Test', 'consultancy' ),
        'all_items'           => __( 'All Tests', 'consultancy' ),
        'view_item'           => __( 'View Test', 'consultancy' ),
        'add_new_item'        => __( 'Add New Test', 'consultancy' ),
        'add_new'             => __( 'Add New Test', 'consultancy' ),
        'edit_item'           => __( 'Edit Test', 'consultancy' ),
        'update_item'         => __( 'Update Test', 'consultancy' ),
        'search_items'        => __( 'Search Test', 'consultancy' ),
        'not_found'           => __( 'No Tests found', 'consultancy' ),
        'not_found_in_trash'  => __( 'Not found in trash', 'consultancy' ),
    );
    // Another Customizations
    $args = array(
        'label'   => __('Tests','consultancy' ),
        'description' => __('Tests of Consultancy', 'consultancy'),
        'labels'  => $labels,
        'supports' => array('title', 'editor'),
        'hierarchical' => false,
        'public' => true,
        'show_ui' => true,
        'show_in_menus' => true,
        'show_in_nav_menus' => true,
        'show_in_admin_bar' => true,
        'menu_position' => 15,
        'menu_icon' => 'dashicons-welcome-learn-more',
        'can_export' => true,
        'has_archive' => true,
        'exclude_from_search' => false,
        'capability_type' => 'page',
    );
    // register the post Type
    register_post_type( 'tests', $args);
}