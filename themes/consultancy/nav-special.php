<div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v11.0" nonce="nekImEYP"></script>
    <div class="scrollTop float-right">
        <i class="fas fa-angle-up" onclick="topFunction()" id="myBtn"></i>
    </div>
    <div class="top-header">
        <div class="container">
            <div class="inner-content">
                <div class="top-left">
                    <ul>
                        <?php if(get_theme_mod('consultancy_address_handle')){?>

                            <li><i class="fas fa-map-marker-alt"></i><?php echo get_theme_mod('consultancy_address_handle'); ?></li>
                        <?php } ?>
                        <?php if(get_theme_mod('consultancy_phone_handle')){?>

                            <li><i class="fas fa-phone-volume"></i><?php echo get_theme_mod('consultancy_phone_handle'); ?></li>
                        <?php } ?>
                        <?php if(get_theme_mod('consultancy_email_handle')){?>

                            <li><i class="fas fa-envelope"></i><?php echo get_theme_mod('consultancy_email_handle'); ?></li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="top-right">
                    <ul>
                        <?php if(get_theme_mod('consultancy_facebook_handle')){?>
                            <li><a href="<?php echo get_theme_mod('consultancy_facebook_handle'); ?>"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                        <?php } ?>
                        <?php if(get_theme_mod('consultancy_twitter_handle')){?>
                            <li><a href="<?php echo get_theme_mod('consultancy_twitter_handle'); ?>"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                        <?php } ?>
                        <?php if(get_theme_mod('consultancy_instagram_handle')){?>
                            <li><a href="<?php echo get_theme_mod('consultancy_instagram_handle'); ?>"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- NAVBAR -->
    <div class="header-wrapper" id="topheader">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">

                <?php
                    if(has_custom_logo() || is_customize_preview()){
                        the_custom_logo();
                    } else { ?>
                      <a href="<?php  echo esc_url(home_url('/')); ?>" >
                        <img class="img-fluid" src="<?php echo get_template_directory_uri()?>'assets\images\logo\logo.jpg'" alt="Logo">
                      </a>
                <?php } ?>
                
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <?php
                        wp_nav_menu( array(
                            'menu' => 'header',
                            'menu_class' => 'navbar-nav ml-auto',
                            'fallback_cb' => false,
                            'list_item_class'  => 'nav-item',
                            'link_class'   => 'nav-link',
                        ));
                    ?> 
                   <!--  <ul class="navbar-nav ml-auto">

                      
                        <li class="nav-item">
                            <a class="nav-link" href="<?php echo esc_url(home_url()); ?>">HOME</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                ABOUT US
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                                <a class="dropdown-item" href="<?php echo esc_url(site_url('/introduction')); ?>"> INTRODUCTION</a>
                                <a class="dropdown-item" href="<?php echo esc_url(site_url('/our-team')) ?>"> OUR TEAM</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                STUDY ABROAD
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                                <?php
                                $args = array(
                                    'post_type' => 'countries',
                                    'post_status' => 'publish',
                                    'posts_per_page' => -1,
                                    'orderby' => 'date',
                                    'order' => 'ASC',
                                );
                                $countries = new WP_Query($args);
                                while ($countries->have_posts()) : $countries->the_post(); ?>
                                    <a class="dropdown-item" href="<?php the_permalink(); ?>"> <?php the_title(); ?></a>
                                <?php endwhile;
                                wp_reset_postdata();  ?>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                SERVICES </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                                  <?php
                                    $args = array(
                                        'post_type' => 'services',
                                        'post_status' => 'publish',
                                        'posts_per_page' => -1,
                                        'orderby' => 'date',
                                        'order' => 'ASC',
                                    );
                                    $services = new WP_Query($args);
                                    while ($services->have_posts()) : $services->the_post(); ?>
                                    <a class="dropdown-item" href="<?php the_permalink(); ?>"> <?php the_title(); ?></a>
                                <?php endwhile;
                                wp_reset_postdata();  ?>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                TEST PREPARATION </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                                <?php
                                    $args = array(
                                        'post_type' => 'tests',
                                        'post_status' => 'publish',
                                        'posts_per_page' => -1,
                                        'orderby' => 'date',
                                        'order' => 'ASC',
                                    );
                                    $tests = new WP_Query($args);
                                    while ($tests->have_posts()) : $tests->the_post(); ?>
                                    <a class="dropdown-item" href="<?php the_permalink(); ?>"> <?php the_title(); ?></a>
                                <?php endwhile;
                                wp_reset_postdata();  ?>
                            </div>
                        </li>
                      
                        <li class="nav-item">
                            <a class="nav-link" href="<?php echo esc_url(site_url('/blog')); ?>">BLOG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<?php echo esc_url(site_url('/gallery')); ?>">GALLERY</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<?php echo esc_url(site_url('/faq')); ?>">FAQ</a>
                        </li>
                        <li class="further-info">
                            <a href='<?php echo esc_url(site_url('/contact-us')); ?>'><button class="enquiry">ENQUIRY</button></a>
                        </li>
                    </ul> -->
                </div>
            </div>
        </nav>
    </div>