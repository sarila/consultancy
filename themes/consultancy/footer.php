<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="first-child">
                    <div class="footer-img">
                        <?php
                            if(has_custom_logo() || is_customize_preview()){
                                the_custom_logo();
                            } else { ?>
                              <a href="<?php echo esc_url(home_url('/')); ?>" >
                                <img src="<?php echo get_template_directory_uri()?>'assets\images\logo\logo.jpg'" alt="Logo">
                              </a>
                        <?php } ?>
                        <!-- <img src="assets/images/logo/logo.jpg" alt=""> -->
                    </div>
                    <div class="social-buttons">
                        <?php if(get_theme_mod('consultancy_facebook_handle')){?>
                            <a href="<?php echo get_theme_mod('consultancy_facebook_handle'); ?>" class="social-buttons__button social-button social-button--facebook" aria-label="Facebook">
                                <span class="social-button__inner">
                                    <i class="fab fa-facebook-f"></i>
                                </span>
                            </a>
                        <?php } ?>
                        <?php if(get_theme_mod('consultancy_twitter_handle')){?>
                            <a href="<?php echo get_theme_mod('consultancy_twitter_handle'); ?>" class="social-buttons__button social-button social-button--youtube" aria-label="Youtube">
                                <span class="social-button__inner">
                                    <i class="fab fa-twitter"></i>
                                </span>
                            </a>
                        <?php } ?>
                        <?php if(get_theme_mod('consultancy_instagram_handle')){?>
                            <a href="<?php echo get_theme_mod('consultancy_instagram_handle'); ?>" class="social-buttons__button social-button social-button--instagram" aria-label="Instagram">
                                <span class="social-button__inner">
                                    <i class="fab fa-instagram"></i>
                                </span>
                            </a>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-3">
                <div class="footer-title">
                    <h5>Quick Links</h5>
                </div>
                <div class="second-child">
                    <?php
                        wp_nav_menu( array(
                            'menu' => 'footer',
                            // 'menu_class' => 'navbar-nav ms-auto',
                            'fallback_cb' => false,
                            // 'link_class'   => 'fas fa-angle-right mr-2',
                            
                        ));
                    ?> 
                        <!-- <li><a href="index.php"><i class="fas fa-angle-right mr-2"></i>Home</a></li>
                        <li><a href="introduction.php"><i class="fas fa-angle-right mr-2"></i>About Us</a></li>
                        <li><a href="blog.php"><i class="fas fa-angle-right mr-2"></i>Blog</a></li>
                        <li><a href="contact-us.php"><i class="fas fa-angle-right mr-2"></i>Contact Us</a></li> -->
                </div>
            </div>
            <div class="col-lg-3 col-md-5">
                <div class="footer-title">
                    <h5>Test Preparation</h5>
                </div>
                <div class="third-child">
                    
                    <?php
                        wp_nav_menu( array(
                            'menu' => 'test',
                            // 'menu_class' => 'navbar-nav ms-auto',
                            'fallback_cb' => false,
                            // 'link_class'   => 'fas fa-angle-right mr-2',

                        ));
                    ?> 
                   <!--  <ul>
                        <li><a href="ielts.php"><i class="fas fa-angle-right mr-2"></i>IELTS</a></li>
                        <li><a href="toefl.php"><i class="fas fa-angle-right mr-2"></i>TOEFL</a></li>
                        <li><a href="gmat.php"><i class="fas fa-angle-right mr-2"></i>GMAT</a></li>
                    </ul>
                    <ul>
                        <li><a href="sat.php"><i class="fas fa-angle-right mr-2"></i>SAT</a></li>
                        <li><a href="gre.php"><i class="fas fa-angle-right mr-2"></i>GRE</a></li>
                        <li><a href="pte.php"><i class="fas fa-angle-right mr-2"></i>PTE</a></li>
                    </ul> -->
                </div>
            </div>
            <div class="col-lg-3 col-md-12">
                <div class="newsletter-head">
                    <h5 class="footer-title">Newsletter</h5>
                </div>
                <div class="newsletter">
                    <?php echo do_shortcode('[contact-form-7 id="142" title="NewsLetter"]'); ?>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright-wrapper">
        <p class="text-center copyright">Hamro Japanese Language School @ <?php echo date('Y'); ?>, All Rights Reserved</p>
    </div>
</footer>

<?php wp_footer(); ?>

</body>

</html>