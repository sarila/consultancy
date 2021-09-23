<?php /* Template Name: Our Team */ ?>

<?php get_header(); ?>
<?php get_template_part('nav-special') ?>

<div class="inner-title-banner">
    <div class="sub-head">
        <h2 class="text-uppercase text-white">Our Team</h2>
        <ul class="breadcrumb">
            <li>
                <a href="<?php esc_url(home_url()); ?>">Home</a>
            </li>
            <li>
                <a href="">Our Team</a>
            </li>
        </ul>
    </div>
</div>
<section class="team">
    <div class="container">
        <div class="team-heading text-center mb-4">
            <h4>Meet the team </h4>
            <p class="text-center">Get to know the people behind Intact. Our creative and technical team.</p>
        </div>
        <div class="row">
        	<?php
                $args = array(
                    'post_type' => 'teams',
                    'post_status' => 'publish',
                    'posts_per_page' => -1,
                    'orderby' => 'date',
                    'order' => 'ASC',
                );
                $teams = new WP_Query($args);
                while ($teams->have_posts()) : $teams->the_post(); ?>
 			
	            <div class="col-lg-3 col-md-6">
	                <div class="team-detail">
	                    <img src="<?php the_post_thumbnail_url(); ?>" class="img-fluid" alt="">
	                    <div class="team-info mt-2">
	                        <strong><?php the_title(); ?></strong>
	                        <span class="position"><?php echo the_field('position'); ?></span>
	                    </div>
	                    <div class="team-social-icons">
	                        <ul class="d-flex">
	                            <li><a href="<?php echo the_field('facebook_link'); ?>"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
	                            <li><a href="<?php echo the_field('twitter_link'); ?>"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
	                            <li><a href="<?php echo the_field('instagram_link'); ?>"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
	                            <li><a href="<?php echo the_field('linkedin_link'); ?>"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
	                        </ul>
	                    </div>
	                </div>
	            </div>

            <?php endwhile;
             wp_reset_postdata();  ?>
        </div>
    </div>
    </div>
</section>
<?php get_footer(); ?>