<?php /* Template Name: Blog */ ?>

<?php get_header(); ?>
<?php get_template_part('nav-special'); ?>

<div class="inner-title-banner">
    <div class="sub-head">
        <h2 class="text-uppercase text-white">BLOGS</h2>
        <ul class="breadcrumb">
            <li>
                <a href="<?php echo esc_url(home_url()); ?>">Home</a>
            </li>
            <li>
                <a href="#">BLOGS</a>
            </li>
        </ul>
    </div>
</div>
<!-- BLOG SECTION -->
<section class="blog-grid">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-12">
                <h3 class="text-center">BLOGS</h3>
                <p class="text-center">Other times I'll visit a massive blog post and I'll know there's value there, but
                    finding it in the mass of text seems almost impossible.</p>
                <div class="row">
                	<?php
		                $args = array(
		                    'post_type'  => 'post',
		                    'post_per_page'  => -1,
		                    'orderby' => 'date',
		                    'order' => 'DESC'
		                );
		                $blogs = new WP_Query($args);
		                while ($blogs->have_posts()) : $blogs->the_post();
		                ?>

	                    <div class="col-lg-6 col-md-6 mt-4 mb-4">
	                        <div class="blog-info">
	                            <a href="blog-detail.php"> <img src="<?php echo the_field('cover_image'); ?>" class="img-fluid" alt=""></a>
	                            <div class="entry-meta mt-3">
	                                <span class="posted-on"><i class="far fa-calendar"></i><?php the_field('date'); ?></span>
	                                <?php 
									$categories = get_the_category( get_the_ID() );
	                                if (isset($categories)) { ?>
                                		<span class="cat-links"><i class="fas fa-tags"></i>
                                        <?php
                                        foreach($categories as $category){  
                                            echo $category->name .' '; 
                                        }?>
                                        </span>  
		                            <?php  } ?>
	                            </div>
	                            <div class="blog-title mt-3">
	                                <a href="<?php echo the_permalink(); ?>"><?php the_title(); ?></a>
	                            </div>
	                            <div class="blog-short-desc mt-2">
	                                <p><?php the_excerpt(); ?></p>
	                            </div>
	                            <button class="button"> <a href="<?php echo the_permalink(); ?>"><span>KNOW MORE </span></a></button>
	                        </div>
	                    </div>
                    <?php endwhile; 
               	 	wp_reset_postdata(); ?>

                </div>
            </div>
            <div class="col-lg-3 col-md-12  blog-sidebar widget_area">
                <div class="tags widget_tag_cloud">
                    <h3 class="widget_title">TAGS</h3>
                    <div class="tagcloud">
                    	<?php 
						$tags = get_tags();
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
                <?php get_template_part('rightsidebar-special'); ?>
            </div>
        </div>
    </div>
</section>
<!-- BLOG SECTION ENDS  -->
<?php get_footer(); ?>