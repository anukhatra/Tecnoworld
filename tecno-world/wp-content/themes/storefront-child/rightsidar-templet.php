<?php /*
* Template Name: rightslidar-templete
*/
?>

<?php get_header();?>


<main>
			<section>
				<div class="container">
					<div class="row">
                        <div id="primary" class="col-xs-12 col-md-9">
                        <?php   
							if ( have_posts() ) : 
								while ( have_posts() ) : the_post();
									the_content();
								endwhile;
							else :
								_e( 'Sorry, no posts matched your criteria.', 'textdomain' );
							endif;
							?>
                        </div>
                        <aside id="secondary" class="col-xs-12 col-md-3">
                            <ul class="side-menu">
                            <?php
                            if(is_active_sidebar('right-sidebar')){
                            dynamic_sidebar('right-sidebar');
                            }
                            ?>
                            </ul>
                        </aside>
					</div>
				</div>
			</section>
		</main>
		
<?php get_footer();?>
