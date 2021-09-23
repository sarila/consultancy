<?php get_header(); ?>
<?php get_template_part('nav-special'); ?>

<?php while(have_posts()) : the_post(); ?>
    
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v11.0" nonce="kzUdVpDH"></script>
<div class="inner-title-banner">
    <div class="sub-head">
        <h2 class="text-uppercase text-white"><?php the_title(); ?></h2>
        <ul class="breadcrumb">
            <li>
                <a href="index.php">Home</a>
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
            <div class="col-lg-9 col-md-12">
                <div class="preparation-detail">
                    <?php the_content(); ?>
                </div>

               <!--  <form action="" class="ielts-test">
                    <strong class="primary">Some Test Questions:</strong>
                    <div class="accordion">
                        <div class="accordion-item">
                            <button type="button" id="accordion-button-1" aria-expanded="false"><span class="accordion-title">Why is the moon sometimes out during the day?</span><span class="icon" aria-hidden="true"></span></button>
                            <div class="accordion-content">
                                <textarea placeholder="Answer" class="form-control" name="msg" cols="3" rows="4"></textarea>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <button type="button" id="accordion-button-2" aria-expanded="false"><span class="accordion-title">Why is the sky blue?</span><span class="icon" aria-hidden="true"></span></button>
                            <div class="accordion-content option">
                                <input type="radio" id="html" name="fav_language" value="HTML" checked>
                                  <label for="html">HTML</label><br>
                                  <input type="radio" id="css" name="fav_language" value="CSS">
                                  <label for="css">CSS</label><br>
                                  <input type="radio" id="javascript" name="fav_language" value="JavaScript">
                                  <label for="javascript">JavaScript</label>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <button type="button" id="accordion-button-3" aria-expanded="false"><span class="accordion-title">Will we ever discover aliens?</span><span class="icon" aria-hidden="true"></span></button>
                            <div class="accordion-content">
                                <textarea placeholder="Answer" class="form-control" name="msg" cols="3" rows="4"></textarea>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <button type="button" id="accordion-button-4" aria-expanded="false"><span class="accordion-title">How much does the Earth weigh?</span><span class="icon" aria-hidden="true"></span></button>
                            <div class="accordion-content">
                                <textarea placeholder="Answer" class="form-control" name="msg" cols="3" rows="4"></textarea>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <button type="button" id="accordion-button-5" aria-expanded="false"><span class="accordion-title">How do airplanes stay up?</span><span class="icon" aria-hidden="true"></span></button>
                            <div class="accordion-content">
                                <textarea placeholder="Answer" class="form-control" name="msg" cols="3" rows="4"></textarea>
                            </div>
                        </div>
                        <div class="submit-button mt-3">
                            <a href="#">SUBMIT</a>
                        </div>
                    </div>

                </form> -->

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