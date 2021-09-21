<?php
   function consultancy_enqueue(){
       $uri = get_theme_file_uri();
       $ver = CONSULTANCY_DEV_MODE ? time() : false;


       // Custom CSS
       wp_register_style('consultancy_bootstrap_css', "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" );
       wp_register_style('consultancy_google_fonts_css', "https://fonts.googleapis.com");
       wp_register_style('consultancy_fonts_css', "https://fonts.gstatic.com");
       wp_register_style('consultancy_googleapi_css', "https://fonts.googleapis.com/css2?family=Poppins&display=swap");
       wp_register_style('consultancy_fontawesome_css',"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css");
       wp_register_style('consultancy_owl_css', "https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css");
       wp_register_style('consultancy_swiper_css', "https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css");
       wp_register_style('consultancy_fancybox_css', "https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css");


       wp_register_style('consultancy_header_css', $uri . '/assets/css/header.css', [], $ver);
       wp_register_style('consultancy_footer_css', $uri . '/assets/css/footer.css', [], $ver);
       wp_register_style('consultancy_style_css', $uri . '/assets/css/style.css', [], $ver);
       wp_register_style('consultancy_introduction_css', $uri . '/assets/css/introduction.css', [], $ver);
       wp_register_style('consultancy_contact_css', $uri . '/assets/css/contact-us.css', [], $ver);
       wp_register_style('consultancy_team_css', $uri . '/assets/css/team.css', [], $ver);
       wp_register_style('consultancy_sidebar_css', $uri . '/assets/css/right-sidebar.css', [], $ver);
       wp_register_style('consultancy_test_css', $uri . '/assets/css/test-preparation.css', [], $ver);
       wp_register_style('consultancy_abroad_css', $uri . '/assets/css/abroad-programs.css', [], $ver);
       wp_register_style('consultancy_blog_css', $uri . '/assets/css/blog.css', [], $ver);
       wp_register_style('consultancy_blog_detail_css', $uri . '/assets/css/blog-detail.css', [], $ver);
       wp_register_style('consultancy_services_css', $uri . '/assets/css/services.css', [], $ver);
       wp_register_style('consultancy_gallery_css', $uri . '/assets/css/gallery.css', [], $ver);
       wp_register_style('consultancy_faq_css', $uri . '/assets/css/faq.css', [], $ver);


       wp_enqueue_style('consultancy_bootstrap_css');
       wp_enqueue_style('consultancy_google_fonts_css');
       wp_enqueue_style('consultancy_fonts_css');
       wp_enqueue_style('consultancy_googleapi_css');
       wp_enqueue_style('consultancy_fontawesome_css');
       wp_enqueue_style('consultancy_owl_css');
       wp_enqueue_style('consultancy_swiper_css');
       wp_enqueue_style('consultancy_fancybox_css');

       wp_enqueue_style('consultancy_header_css');
       wp_enqueue_style('consultancy_footer_css');
       wp_enqueue_style('consultancy_style_css');
       wp_enqueue_style('consultancy_introduction_css');
       wp_enqueue_style('consultancy_contact_css');
       wp_enqueue_style('consultancy_team_css');
       wp_enqueue_style('consultancy_sidebar_css');
       wp_enqueue_style('consultancy_test_css');
       wp_enqueue_style('consultancy_abroad_css');
       wp_enqueue_style('consultancy_blog_css');
       wp_enqueue_style('consultancy_blog_detail_css');
       wp_enqueue_style('consultancy_services_css');
       wp_enqueue_style('consultancy_gallery_css');
       wp_enqueue_style('consultancy_faq_css');
       

       // JS
       wp_register_script('consultancy_jquery', "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js", [], $ver, true);
       wp_register_script('consultancy_fancybox', "https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js", [], $ver, true);
       wp_register_script('consultancy_OwlCarousel', "https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js", [], $ver, true);
       wp_register_script('consultancy_swiper', "https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.js", [], $ver, true);
       wp_register_script('consultancy_bootstrap', "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js", [], $ver, true);
       wp_register_script('consultancy_custom_js', $uri . '/assets/js/custom.js', [], $ver, true);
   
       wp_enqueue_script('consultancy_jquery');
       wp_enqueue_script('consultancy_fancybox');
       wp_enqueue_script('consultancy_OwlCarousel');
       wp_enqueue_script('consultancy_swiper');
       wp_enqueue_script('consultancy_bootstrap');
       wp_enqueue_script('consultancy_custom_js');
   }
