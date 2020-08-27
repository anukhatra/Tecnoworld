<?php
/**
 * Plugin Name:       Popular Products
 * Description:       Plugin för att lista de 10 bäst säljande produkterna.
 * Version:           0.2
 * Requires PHP:      7.2
 */

function topProducts(){
    $args = array(
        'posts_per_page' => 10,
        'post_type' => 'product',
        'orderby' => 'meta_value_num',
        'meta_key' => '_price',
        'order' => 'asc'
    );

    $products = new WP_Query($args);
    

    if($products->have_posts() ) {

        echo '';
    while($products->have_posts() ) {
        $products->the_post();
        $price = get_post_meta(get_the_ID(), '_price', true);
        echo  '<h3>' .  get_the_title() .'</h3>' . get_the_post_thumbnail() .' </br> '. wc_price($price) . ' </br> ' . get_the_excerpt()   ;
    }
    echo '</ul>';    
    } else {

    }
    wp_reset_postdata();

}
add_shortcode('bestProducts', 'topProducts');
?>
