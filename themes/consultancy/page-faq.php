<?php /* Template Name: FAQ */ ?>

<?php get_header(); ?>
<?php get_template_part('nav-special') ?>

<section class="faq">
    <div class="container">
        <h3>Frequently Asked Questions</h3>
        <?php
            $args = array(
                'post_type' => 'faqs',
                'post_status' => 'publish',
                'posts_per_page' => -1,
                'orderby' => 'date',
                'order' => 'ASC'

            );
        ?>

	        <div class="accordion">
	        	<?php               
				    $faq = new WP_Query($args);
				    if ($faq->have_posts()) :
				    while ($faq->have_posts()) :
				        $faq->the_post();
				?>
		            <div class="accordion-item">
		                <button id="accordion-button-<?php echo get_the_ID(); ?>" aria-expanded="false"><span class="accordion-title"><?php the_title(); ?></span><span class="icon" aria-hidden="true"></span></button>
		                <div class="accordion-content">
		                    <p><?php the_content(); ?></p>
		                </div>
		            </div>
	 			<?php endwhile; endif;?>
	             

	        </div>
 		<?php wp_reset_postdata();  ?>

    </div>
</section>
<?php get_footer(); ?>