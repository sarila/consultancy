<?php get_header(); ?>
<?php get_template_part('nav-special'); ?>

<?php while(have_posts()) : the_post(); ?>
    
<div class="inner-title-banner">
    <div class="sub-head">
        <h2 class="text-uppercase text-white"><?php the_title(); ?></h2>
        <ul class="breadcrumb">
            <li>
                <a href="<?php echo esc_url(home_url()); ?>">Home</a>
            </li>
            <li>
                <a href="#"><?php the_title(); ?></a>
            </li>
        </ul>
    </div>
</div>
<section class="inner-detail">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <div class="programs-detail">
                    <h5><?php the_title(); ?></h5>

                    <?php the_content(); ?>

                </div>
            </div>
            <div class="col-lg-3 col-md-12">
                <div class="right-sidebar">
                    <?php get_template_part('rightsidebar-special') ?>
                </div>
            </div>


        </div>
    </div>
</section>

<?php endwhile  ?>
<?php get_footer(); ?>