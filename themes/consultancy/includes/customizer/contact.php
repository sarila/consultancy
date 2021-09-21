<?php
  function consultancy_general_customizer_section($wp_customize){
      $wp_customize->add_setting('consultancy_phone_handle', array(
          'default' => ''
      ));
      $wp_customize->add_setting('consultancy_email_handle', array(
          'default' => ''
      ));
      $wp_customize->add_setting('consultancy_address_handle', array(
          'default' => ''
      ));
      $wp_customize->add_setting('consultancy_facebook_handle', array(
          'default' => ''
      ));

      $wp_customize->add_setting('consultancy_twitter_handle', array(
          'default' => ''
      ));
      $wp_customize->add_setting('consultancy_youtube_handle', array(
          'default' => ''
      ));
      $wp_customize->add_setting('consultancy_instagram_handle', array(
          'default' => ''
      ));


      $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'consultancy_phone_text', array(
          'label' => __('Phone Number', 'consultancy'),
          'section' => 'title_tagline',
          'settings' => 'consultancy_phone_handle',
          'description' => __('Enter Your Phone Number', 'consultancy'),
          'type' => 'text'
      )));
      $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'consultancy_email_text', array(
          'label' => __('E-Mail Address', 'consultancy'),
          'section' => 'title_tagline',
          'settings' => 'consultancy_email_handle',
          'description' => __('Enter Your E-Mail Address', 'consultancy'),
          'type' => 'text'
      )));
      $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'consultancy_address_text', array(
          'label' => __('Address', 'consultancy'),
          'section' => 'title_tagline',
          'settings' => 'consultancy_address_handle',
          'description' => __('Enter Your Address', 'consultancy'),
          'type' => 'text'
      )));

      $wp_customize->add_control(new WP_Customize_Image_Control( $wp_customize, 'consultancy_footer_image', array(
          'label' => __('Footer Image', 'consultancy'),
          'section' => 'title_tagline',
          'settings' => 'consultancy_footer_image_handle',
      )));

      $wp_customize->add_section('medicust_social_section', array(
          'title' => __('Social Settings', 'consultancy'),
          'priority' => 20
      ));

      $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'consultancy_facebook_text', array(
          'label' => __('Facebook URL', 'consultancy'),
          'section' => 'medicust_social_section',
          'settings' => 'consultancy_facebook_handle',
          'description' => __('Enter Facebook link', 'consultancy'),
          'type' => 'text'
      )));

      $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'consultancy_twitter_text', array(
          'label' => __('Twitter URL', 'consultancy'),
          'section' => 'medicust_social_section',
          'settings' => 'consultancy_twitter_handle',
          'description' => __('Enter twitter link', 'consultancy'),
          'type' => 'text'
      )));

      $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'consultancy_youtube_text', array(
          'label' => __('Youtube URL', 'consultancy'),
          'section' => 'medicust_social_section',
          'settings' => 'consultancy_youtube_handle',
          'description' => __('Enter Youtube link', 'consultancy'),
          'type' => 'text'
      )));
      $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'consultancy_instagram_text', array(
          'label' => __('Instagram URL', 'consultancy'),
          'section' => 'medicust_social_section',
          'settings' => 'consultancy_instagram_handle',
          'description' => __('Enter Instagram link', 'consultancy'),
          'type' => 'text'
      )));
  }