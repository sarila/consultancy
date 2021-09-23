<?php /* Template Name: Introduction */ ?>

<?php get_header(); ?>
<?php get_template_part('nav-special') ?>

<div class="inner-title-banner">
    <div class="sub-head">
        <h2 class="text-uppercase text-white">About Us</h2>
        <ul class="breadcrumb">
            <li>
                <a href="<?php esc_url(home_url()); ?>">Home</a>
            </li>
            <li>
                <a href="#">Introduction</a>
            </li>
        </ul>
    </div>
</div>
<section class="about-us">
    <div class="container">
        <h4>Message From Owner</h4>
        <div class="row">
            <div class="col-lg-6">
                <div class="about-content">
                    <?php echo the_field('message') ?>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="about-img"> <img src="<?php echo the_field('owner_image') ?>" class="img-fluid" alt=""></div>

            </div>
        </div>
    </div>
</section>
<section class="about-consultancy">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="about-detail">
                    <h3><i class="fas fa-quote-left"></i> <?php the_field('quote'); ?><i class="fas fa-quote-right"></i></h3>
                </div>
            </div>
            <div class="col-lg-6">
                <p><?php the_field('description'); ?></p>
            </div>
        </div>
    </div>
</section>
<section class="vision">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="our-vision">
                    <h5>OUR VISION</h5>
                    <?php echo the_field('our_vision'); ?>
                    <!-- <ul>
                        <li>
                            <div><i class="fas fa-check mr-2"></i></div>To provide customized solutions to the
                            students aspiring to study.
                        </li>
                        <li>
                            <div><i class="fas fa-check mr-2"></i></div>Strive for the organic growth of our
                            organization through
                            integrity, honesty, and excellence.
                        </li>
                        <li>
                            <div><i class="fas fa-check mr-2"></i></div>To build a strong and credible relationship with
                            the partner
                            institutions by recognizing shared values & goals.
                        </li>

                        <li>
                            <div><i class="fas fa-check mr-2"></i></div>Lorem ipsum dolor sit amet consectetur
                            adipisicing elit.
                            Deserunt, commodi!
                        </li>
                    </ul> -->
                </div>
            </div>
            <div class="col-lg-6">
                <div class="our-mission">
                    <h5>OUR MISSION</h5>
                    <?php echo the_field('our_vision'); ?>
                  <!--   <ul>
                        <li>
                            <div><i class="fas fa-check mr-2"></i></div>To provide customized solutions to the
                            students aspiring to study.
                        </li>
                        <li>
                            <div><i class="fas fa-check mr-2"></i></div>Strive for the organic growth of our
                            organization through
                            integrity, honesty, and excellence.
                        </li>
                        <li>
                            <div><i class="fas fa-check mr-2"></i></div>To build a strong and credible relationship with
                            the partner
                            institutions by recognizing shared values & goals.
                        </li>

                        <li>
                            <div><i class="fas fa-check mr-2"></i></div>Lorem ipsum dolor sit amet consectetur
                            adipisicing elit.
                            Deserunt, commodi!
                        </li>
                    </ul> -->
                </div>
            </div>
        </div>
    </div>
</section>

<?php get_footer(); ?>