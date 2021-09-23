
<?php get_header(); ?>
<?php get_template_part('nav-special'); ?>

<?php while(have_posts()) : the_post(); ?>

<div class="inner-title-banner">
    <div class="sub-head">
        <h2 class="text-uppercase text-white">BLOG DETAIL</h2>
        <ul class="breadcrumb">
            <li>
                <a href="<?php echo esc_url(site_url()); ?>">Home</a>
            </li>
            <li>
                <a href="#">BLOG-DETAIL</a>
            </li>
        </ul>
    </div>
</div>
<section class="blog-detail">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <div class="content-detail">
                    <h4 class="mb-3"><?php the_title(); ?></h4>
                    <img src="<?php echo the_post_thumbnail_url(); ?>" alt="">
                    <div class="datetime-wrapper mt-3">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="author-title">
                                    <i class="far fa-user"></i>
                                    <p><?php echo the_field('author'); ?> </p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="author-title">
                                    <i class="far fa-calendar"></i>
                                    <p><?php echo the_field('date'); ?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="blog-information">
                        <?php the_content(); ?>
                    </div>
                    <div class="fb-comments" data-href="https://www.facebook.com/HAMRO-Japanese-language-School-475023392617404/" data-width="100%" data-numposts="5"></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-12  blog-sidebar widget_area p-0 mt-5">
                <div class="tags widget_tag_cloud">
                    <h3 class="widget_title">TAGS</h3>
                    <div class="tagcloud">
                        <?php 
						$tags = get_the_tags( get_the_ID() );
                        if (isset($tags)) { ?>
                            <?php
                            foreach($tags as $tag){  
                                echo ' <a href="" class="btn-4">'. $tag->name .'</a>'; 
                            }?>
                        <?php  } ?>

                    </div>
                </div>
                <div class="widget_search mt-4 mb-4">
                    <input class="search-field" type="text" name="box" placeholder="Search...">
                    <div class="search-submit">
                        <a href="#"> <i class="fa fa-search"></i> </a>
                    </div>
                </div>
				<?php get_template_part('rightsidebar-special') ?>
            </div>
        </div>
    </div>
</section>

<?php endwhile;?>
<?php get_footer(); ?>