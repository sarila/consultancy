<?php get_header(); ?>
<?php get_template_part('nav-special') ?>

<section class="carousel">
    <div class="owl-carousel owl-theme">
        <?php
            $args = array(
                'post_type' => 'sliderimages',
                'post_status' => 'publish',
                'posts_per_page' => -1,
                'orderby' => 'date',
                'order' => 'ASC',
            );
        $sliderimages = new WP_Query($args);
        while ($sliderimages->have_posts()) : $sliderimages->the_post(); ?>
            <div class="item">
                <img src="<?php the_post_thumbnail_url(); ?>" class="img-fluid" alt="">
            </div>
        <?php endwhile;
         wp_reset_postdata();  ?>
       
    </div>
</section>
<section class="short-intro">
    <div class="container">
        <div class="info text-center">
            <h3 class="main">Nepal's Number One Educational Consultancy </h3>
            <p class="mt-3 text-center">HJLS is a provider of short term exam preparation for exams like TOEFL, IELTS, SAT, GRE
                and GMAT. HJLS is a study abroad consultancy that represents institutions around the world and places
                students in these institutions.</p>
        </div>
    </div>
</section>
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
    <path fill="rgb(205,14,21)" fill-opacity="1" d="M0,128L40,149.3C80,171,160,213,240,213.3C320,213,400,171,480,149.3C560,128,640,128,720,133.3C800,139,880,149,960,149.3C1040,149,1120,139,1200,117.3C1280,96,1360,64,1400,48L1440,32L1440,320L1400,320C1360,320,1280,320,1200,320C1120,320,1040,320,960,320C880,320,800,320,720,320C640,320,560,320,480,320C400,320,320,320,240,320C160,320,80,320,40,320L0,320Z">
    </path>
</svg>
<section class="services">
    <div class="container">
        <h4 class="text-center mb-5">WHAT WE DO</h4>
        <div class="row">
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
                <div class="col-md-4 mt-4">
                    <div class="services-detail">
                        <img src="<?php the_post_thumbnail_url() ?>" alt="">
                        <p><a href="#"><?php the_title(); ?></a></p>
                    </div>
                </div>
            <?php endwhile;
            wp_reset_postdata();  ?>
           
        </div>
    </div>
</section>
<section class="study-abroad">
    <div class="container">
        <h3 class="text-center">Explore Your <span>STUDY ABROAD OPTIONS</span></h3>
        <div class="row">
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
                <div class="col-lg-3 col-md-6">
                    <div class="destination">
                        <img src="<?php the_post_thumbnail_url() ?>" alt="">
                        <div class="destination-title"><a href="study-in-australia.php">
                                <?php the_title(); ?> </a>
                        </div>
                    </div>
                </div>
            <?php endwhile;
            wp_reset_postdata();  ?>
           
          
        </div>
    </div>
</section>
<section class="students-placed mt-5">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="counter-count">
                    <h2>200k+</h2>
                    <p>STUDENTS PLACED</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="counter-count">
                    <h2>10+</h2>
                    <p>DESTINATION COUNTRIES</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="counter-count">
                    <h2>100+</h2>
                    <p>PARTNERSHIPS</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="counter-count">
                    <h2>50+</h2>
                    <p>CONSULTANTS</p>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="review">
    <div class="container">
        <div class="section-title">
            <h4>Testimonials</h4>
            <span class="section-separator"></span>
            <p>What Our Students Say</p>
        </div>
    </div>
    <div class="testimonials-carousel-wrap">
        <div class="listing-carousel-button listing-carousel-button-next"><i class="fa fa-caret-right"></i></div>
        <div class="listing-carousel-button listing-carousel-button-prev"><i class="fa fa-caret-left"></i></div>
        <div class="testimonials-carousel">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <?php
                        $args = array(
                            'post_type' => 'testimonials',
                            'post_status' => 'publish',
                            'posts_per_page' => -1,
                            'orderby' => 'date',
                            'order' => 'ASC',
                        );
                        $testimonials = new WP_Query($args);
                        while ($testimonials->have_posts()) : $testimonials->the_post(); ?>
                    
                        <div class="swiper-slide">
                            <div class="testi-item">
                                <div class="testi-avatar"><img src="<?php echo the_post_thumbnail_url(); ?>" alt=""></div>
                                <div class="testimonials-text-before"><i class="fa fa-quote-right"></i></div>
                                <div class="testimonials-text">
                                    <div class="listing-rating">
                                       <?php 
                                        $i = 0;
                                        $rate =(int)get_field('rate');
                                        for( $i=0; $i<$rate; $i++){
                                            echo '<i class="fa fa-star"></i>';
                                        }
                                       ?>
                                    </div>
                                    <p><?php the_content(); ?>
                                    </p>
                                    <a href="#" class="text-link"></a>
                                    <div class="testimonials-avatar">
                                        <h3><?php the_title(); ?></h3>
                                        <h4><?php echo the_field('post'); ?></h4>
                                    </div>
                                </div>
                                <div class="testimonials-text-after"><i class="fa fa-quote-left"></i></div>
                            </div>
                        </div>
                    <?php endwhile;
                     wp_reset_postdata();  ?>
                </div>
            </div>
        </div>

        <div class="tc-pagination"></div>
    </div>
</section>
<!-- OUR PARTNER -->
<section class="partner-sec">
    <div class="container">
        <div class="our-partner">
            <h4 class="text-center mb-4">Our Partners</h4>
            <div class="owl-carousel owl-theme text-center">
                 <?php
                    $args = array(
                        'post_type' => 'partners',
                        'post_status' => 'publish',
                        'posts_per_page' => -1,
                        'orderby' => 'date',
                        'order' => 'ASC',
                    );
                    $partners = new WP_Query($args);
                    while ($partners->have_posts()) : $partners->the_post(); ?>
                   
                    <div class="item">
                        <a href='#'> <img src="<?php echo the_post_thumbnail_url(); ?>" alt="<?php the_title(); ?>"></a>
                    </div>
                <?php endwhile;
                wp_reset_postdata();  ?>
            </div>
        </div>
    </div>
</section>

<?php get_footer(); ?>