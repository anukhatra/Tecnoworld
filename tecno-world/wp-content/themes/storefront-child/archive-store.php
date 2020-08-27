<?php
/**
 * The template for displaying archive pages.
 *
 * Learn more: https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package storefront
 */
 
get_header(); ?>
 
    <div id="primary" class="content-area">
        <main id="main" class="site-main" role="main">
 
        <?php if ( have_posts() ) : ?>
 
            <header class="page-header">
                <?php
                    the_archive_title( '<h1 class="page-title">', '</h1>' );
                    the_archive_description( '<div class="taxonomy-description">', '</div>' );
                ?>
            </header><!-- .page-header -->
 
            <?php
            //get_template_part( 'loop' );
            while ( have_posts() ) : the_post();
            // Your loop code
            echo the_title();
            echo the_content();  
            $store_map = get_field('map');
            if( $store_map ): ?>
                <div class="acf-map" data-zoom="16">
                    <div class="marker" data-lat="<?php echo esc_attr($store_map['lat']); ?>" data-lng="<?php echo esc_attr($store_map['lng']); ?>"></div>
                   print_r $store_map;
                </div>
         <?php
            endif;
        endwhile;
    
 
        endif;
        ?>
 
        </main><!-- #main -->
    </div><!-- #primary -->
 
<?php
do_action( 'storefront_sidebar' );
get_footer();