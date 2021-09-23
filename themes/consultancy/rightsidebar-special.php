
        <div class="abroad-programs">
            <h5 class="mb-3">ABROAD PROGRAMS</h5>
            <ul>
                <?php
                $args = array(
                    'post_type' => 'countries',
                    'post_status' => 'publish',
                    'posts_per_page' => -1,
                    'orderby' => 'date',
                    'order' => 'ASC',
                );
                $countries = new WP_Query($args);
                while ($countries->have_posts()) : $countries->the_post(); ?>

           
                <li><a href="study-in-usa.php"><?php the_title(); ?></a></li>
                
                <?php endwhile;
                wp_reset_postdata();  ?>
            </ul>
        </div>
        <div class="test-preparation mt-4">
            <h5 class="mb-3">TEST PREPARATIONS</h5>
            <ul>
                <?php
                $args = array(
                    'post_type' => 'tests',
                    'post_status' => 'publish',
                    'posts_per_page' => -1,
                    'orderby' => 'date',
                    'order' => 'ASC',
                );
                $tests = new WP_Query($args);
                while ($tests->have_posts()) : $tests->the_post(); ?>

                    <li><a href="ielts.php"><?php the_title(); ?></a></li>
                <?php endwhile;
                wp_reset_postdata();  ?>
            
            </ul>
        </div>
        <div class="follow-us mt-4 p-3 mb-3">
            <h6>FOLLOW US ON FACEBOOK</h6>
            <div class="fb-page" data-href="https://www.facebook.com/HAMRO-Japanese-language-School-475023392617404" data-tabs="timeline" data-width="220px" data-height="280px" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
                <blockquote cite="https://www.facebook.com/HAMRO-Japanese-language-School-475023392617404" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/HAMRO-Japanese-language-School-475023392617404">HAMRO Japanese language School</a></blockquote>
            </div>
        </div>
