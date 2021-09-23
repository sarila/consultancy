<?php /* Template Name: Contact US */ ?>

<?php get_header(); ?>
<?php get_template_part('nav-special') ?>

<section class="contact-us">
    <div class="container">
        <div class="row contact-adjustment">
            <div class="col-lg-5">
                <div class="get-in-touch">
                    <h4>GET IN TOUCH</h4>
                    <p>Contact with us for any information</p>
                </div>
                <div class="left-contactinfo">
                    <ul>
                    	<?php if(get_theme_mod('consultancy_address_handle')){?>
                            <li>
	                            <i class="fas fa-map-marker-alt"></i>
	                            <div class="contact-content ml-2">
	                                <span class="address">Address</span>
	                                <span class="location"> <?php echo get_theme_mod('consultancy_address_handle'); ?></span>
	                            </div>
	                        </li>
                        <?php } ?>
                        <?php if(get_theme_mod('consultancy_phone_handle')){?>

	                        <li>
	                            <i class="fas fa-phone-volume"></i>
	                            <div class="contact-content ml-2">
	                                <span class="address">Phone Number</span>
	                                <span class="location"><?php echo get_theme_mod('consultancy_phone_handle'); ?></span>
	                            </div>
	                        </li>
                        <?php } ?>
                        <?php if(get_theme_mod('consultancy_email_handle')){?>

	                        <li>
	                            <i class="far fa-envelope"></i>
	                            <div class="contact-content ml-2">
	                                <span class="address">Mail Us At</span>
	                                <span class="location"><?php echo get_theme_mod('consultancy_email_handle'); ?></span>
	                            </div>
	                        </li>
                        <?php } ?>
                       
                    </ul>
                </div>
            </div>
            <div class="col-lg-7">
                <div class="right-contactinfo">
                    <div class="contact-form">
						<?php echo do_shortcode('[contact-form-7 id="105" title="Contact Us"]');  ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="map mt-5">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28259.83554964602!2d85.31146688702432!3d27.702479548794937!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb1980e9319e7f%3A0x220dee5bf8a34f6!2sTech%20Coderz!5e0!3m2!1sen!2snp!4v1606127244622!5m2!1sen!2snp" width="100%" height="350" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        </div>
    </div>

</section>


<?php get_footer(); ?>