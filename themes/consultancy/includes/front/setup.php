<?php
  function consultancy_setup_theme(){
      
      add_theme_support('title-tag');
      add_theme_support('custom-logo');
      add_theme_support('post-thumbnails'); 

      // add_image_size('products', '190', '200');
      
      register_nav_menu('nav', __('Header Menu', 'consultancy'));
      register_nav_menu('services', __('Services Menu', 'consultancy'));
      register_nav_menu('footer', __('Footer Menu', 'consultancy'));

}