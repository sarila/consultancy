<?php
     function consultancy_customize_register($wp_customize){
         $wp_customize->get_section('title_tagline')->title = "General Settings";

         consultancy_general_customizer_section($wp_customize);
     }