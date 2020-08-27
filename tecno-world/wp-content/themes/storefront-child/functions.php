<?php
add_action( 'wp_enqueue_scripts', 'enqueue_child_theme_styles', PHP_INT_MAX);

function enqueue_child_theme_styles() {
  wp_enqueue_style( 'parent-style', get_template_directory_uri().'/style.css' );
}

//site
add_theme_support( 'title-tag' );

//featured
add_theme_support( 'post-thumbnails' );

//search
add_theme_support( 'searchform' );

//widgets
add_theme_support('widget');

//searchform
function wpdocs_after_setup_theme() {
    add_theme_support( 'html5', array( 'search-form' ) );
}
add_action( 'after_setup_theme', 'wpdocs_after_setup_theme' );


//register left Sidebar
register_sidebar( array(
  'name' => 'left Sidebar',
  'id' => 'left-sidebar',
  'description' => 'Add your Sidebar information',
  'before_widget' => '<aside id="%1$s" class="widget %2$s">',
  'after_widget' => '</aside>',
  'before_title' => '<h3 class="widget-title">',
  'after_title' => '</h3>',
  ) );

//register right Sidebar
register_sidebar( array(
'name' => 'right Sidebar',
'id' => 'right-sidebar',
'description' => 'Add your Sidebar information',
'before_widget' => '<aside id="%1$s" class="widget %2$s">',
'after_widget' => '</aside>',
'before_title' => '<h3 class="widget-title">',
'after_title' => '</h3>',
) );




?>