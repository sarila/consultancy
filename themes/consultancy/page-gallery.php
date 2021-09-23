<?php /* Template Name: Gallery */ ?>

<?php get_header(); ?>
<?php get_template_part('nav-special') ?>
	
	<div class="inner-title-banner">
	    <div class="sub-head">
	        <h2 class="text-uppercase text-white">GALLERY</h2>
	        <ul class="breadcrumb">
	            <li>
	                <a href="index.php">Home</a>
	            </li>
	            <li>
	                <a href="introduction.php">Gallery</a>
	            </li>
	        </ul>
	    </div>
	</div>
	<div class="gallery">
	    <div class="container">
	        <div class="event-gallery">
				<?php the_content(); ?>
	           <!--  <div class="row">
	                <div class="col-lg-4 col-md-6">
	                    <div class="event-images geeks">
	                        <a href="anything.php"><img src="assets/images/team/team1.jpg" alt=""></a>
	                    </div>
	                    <div class="img-content">
	                        <p class="text-center"><a href="anything.php">ANYTHING</a></p>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-md-6">
	                    <div class="event-images geeks">
	                        <a href="anything1.php"><img src="assets/images/destination/canada.jpg" alt=""></a>
	                    </div>
	                    <div class="img-content">
	                        <p class="text-center"><a href="anything1,php">ANYTHING 1</a></p>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-md-6">
	                    <div class="event-images geeks">
	                        <a href="anything2.php"><img src="assets/images/destination/uk1.jpg" alt=""></a>
	                    </div>
	                    <div class="img-content">
	                        <p class="text-center"><a href="anything2.php">ANYTHING 2</a></p>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-md-6">
	                    <div class="event-images geeks">
	                        <a href="anything3.php"><img src="assets/images/destination/america.jpg" alt=""></a>
	                    </div>
	                    <div class="img-content">
	                        <p class="text-center"><a href="anything3.php">ANYTHING 3</a></p>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-md-6">
	                    <div class="event-images geeks">
	                        <a href="anything4.php"><img src="assets/images/team/team1.jpg" alt=""></a>
	                    </div>
	                    <div class="img-content">
	                        <p class="text-center"><a href="anything4.php">ANYTHING 4</a></p>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-md-6">
	                    <div class="event-images geeks">
	                        <a href="anything5.php"><img src="assets/images/destination/america.jpg" alt=""></a>
	                    </div>
	                    <div class="img-content">
	                        <p class="text-center"><a href="anything5.php">ANYTHING 5</a></p>
	                    </div>
	                </div>
	            </div> -->
	        </div>
	    </div>
	</div>
<?php get_footer(); ?>