Vim�UnDo� �}g����j�UP�Ci�toQF�]Ɠ(�>'|   {                  !       !   !   !    g��   + _�                     -   3    ����                                                                                                                                                                                                                                                                                                                                                             f�JQ     �   ,   .   y      3                'default'         => 'Onze partner'5��    ,   3                  �                     5�_�                    -   4    ����                                                                                                                                                                                                                                                                                                                                                             f�JQ     �   ,   /   y      4                'default'         => 'Onze partner',5��    ,   4                  �                     �    -                      �                     5�_�                    .       ����                                                                                                                                                                                                                                                                                                                                                             f�JT     �   -   /   z                      ''5��    -                     �                     �    -                    �                    5�_�                    .   !    ����                                                                                                                                                                                                                                                                                                                                                             f�JW     �   -   /   z      !                'dynamic_content'5��    -   !                  �                     �    -   !                 �                    �    -   !                 �                    5�_�                    .   &    ����                                                                                                                                                                                                                                                                                                                                                             f�J\     �   -   /   z      '                'dynamic_content' => ''5��    -   &                  �                     �    -                     �                    5�_�                    .   -    ����                                                                                                                                                                                                                                                                                                                                                             f�J_    �   ,   /   z      4                'default'         => 'Onze partner',   /                    'dynamic_content' => 'text'5��    ,   4               �                    5�_�                    5       ����                                                                                                                                                                                                                                                                                                                                                             f�Jc    �   4   6   z    �   5   6   z    5��    4                      !              ,       5�_�      	              	        ����                                                                                                                                                                                                                                                                                                                                                             g�     �      
   {    �   	   
   {    5��                          s               $       5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             g�     �                #    public $vb_support = 'partial';5��                          O       $               5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             g�	     �      	   {      #    public $vb_support = 'partial';5��                         i                      5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             g�
   	 �      	   {          public $vb_support = '';5��                         i                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             g��   
 �               {   <?php       /*    * Contact Card    */   .class Partners_Quote extends ET_Builder_Module   {       public $vb_support = 'on';       !    public $selected_member = "";   3    public $selected_member_position = "asdasdasd";           function init()       {   E        $this->name = __('_ NOBEACH - Partners Quote', 'et_builder');   '        $this->slug = 'partners_quote';   M        $this->settings_text = esc_html__('Partners Settings', 'et_builder');       }           /**        * Disable fields        */   0    public function get_advanced_fields_config()       {           return array(   &            'background'     => false,   &            'borders'        => false,   &            'box_shadow'     => false,   &            'button'         => false,   &            'filters'        => false,   &            'fonts'          => false,   &            'margin_padding' => false,   %            'max_width'      => false   
        );       }           function get_fields()       {           return [   $            ...$this->get_members(),               'sub_title' => [   L                'label'           => esc_html__('Sub Title', 'et_builders'),   ,                'type'            => 'text',   4                'option_category' => 'basic_option',   4                'default'         => 'Onze partner',   +                'dynamic_content' => 'text'               ],               'message' => [   T                'label'           => esc_html__('Partner\'s Message', 'et_builder'),   0                'type'            => 'textarea',   4                'option_category' => 'basic_option',   T                'description'     => esc_html__('Partner\'s Message', 'et_builder'),   +                'dynamic_content' => 'text'               ]   
        ];       }           function index(array $atts)       {           ob_start();   $        $post_id = $atts["post_id"];   &        $position = $atts["position"];   $        $message = $atts["message"];               $posts = get_posts(               [   -                "post_type" => "team-member",   (                "post__in" => [$post_id]               ]   
        );       @        include __DIR__ . "/templates/partners-message.tpl.php";           return ob_get_clean();       }           function get_members()       {           $wp = new WP_Query(               [   ,                "post_type" => "team-member"               ]   
        );               $members = [];       -        foreach ($wp->get_posts() as $post) {   N            $members[$post->ID] = esc_html__($post->post_title, "et_builder");   	        }               return [               'team_member' => [   O                'label'           => esc_html__('Select Member', 'et_builder'),   .                'type'            => 'select',   .                'options'         => $members,   4                'option_category' => 'basic_option',               ]   
        ];       }       @    function shortcode_callback($atts, $content, $function_name)       {           return $this->index(               [   D                "post_id"   => $this->shortcode_atts["team_member"],   B                "position"  => $this->shortcode_atts["sub_title"],   @                "message"   => $this->shortcode_atts["message"],               ]   
        );       }       3    function render($attrs, $content, $render_slug)       {           return $this->index(               [   <                "post_id"    => $this->props["team_member"],   :                "position"   => $this->props["sub_title"],   8                "message"    => $this->props["message"],               ]   
        );       }   }       new Partners_Quote;5�5�_�                    q       ����                                                                                                                                                                                                                                                                                                                                                             g�0     �   p   r   {              return $this->index(5��    p                                          5�_�                    w   
    ����                                                                                                                                                                                                                                                                                                                                                             g�3     �   v   y   {      
        );5��    v   
                                       �    w                                           5�_�                    x       ����                                                                                                                                                                                                                                                                                                                                                             g�4     �   w   z   |              5��    w                                           �    w                                           �    x                                           �    x                                           5�_�                    y        ����                                                                                                                                                                                                                                                                                                                                                             g�4     �   x   z   }       �   y   z   }    5��    x                                           5�_�                    y       ����                                                                                                                                                                                                                                                                                                                                                             g�5     �   x   z   }      partial�   y   z   }    5��    x                  ?                ?       5�_�                    y   >    ����                                                                                                                                                                                                                                                                                                                                                             g�8    �   v   z   }      
        );       =	return $this->_render_module_wrapper($output, $render_slug);�   x   z   }      ?	return $this->_render_module_wrapper( $output, $render_slug );5��    x   <                  @                     �    x   &                  *                     �    v   
                            
       5�_�                    y   .    ����                                                                                                                                                                                                                                                                                                                            y   C       y           v        g�R     �   x   z   }      D        return $this->_render_module_wrapper($output, $render_slug);5��    x   .                  2                     �    x   -                  1                     5�_�                    y   -    ����                                                                                                                                                                                                                                                                                                                            w   	       q           v        g�W     �   x   {   }      =        return $this->_render_module_wrapper(, $render_slug);5��    x   -                  1                     �    y                      2                     5�_�                    y   -    ����                                                                                                                                                                                                                                                                                                                            w   	       q           v        g�Y     �   x   {   ~      -        return $this->_render_module_wrapper(5��    x   -                  1                     �    y                      2                     �    y                      2                     5�_�                    z        ����                                                                                                                                                                                                                                                                                                                            w   	       q           v        g�Z     �   y   �          �   z   {       5��    y                  
   2              �       5�_�                    �   
    ����                                                                                                                                                                                                                                                                                                                            w   	       q           v        g�^     �      �   �      
        );5��       	                                       5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            w   	       q           v        g�_    �   x   {   �      -        return $this->_render_module_wrapper(           $this->index(�   y   |   �              $this->index(               [�   z   }   �                  [   <                "post_id"    => $this->props["team_member"],�   {   ~   �      <                "post_id"    => $this->props["team_member"],   :                "position"   => $this->props["sub_title"],�   |      �      :                "position"   => $this->props["sub_title"],   8                "message"    => $this->props["message"],�   }   �   �      8                "message"    => $this->props["message"],               ]�   ~   �   �                  ]   
        ),�      �   �      	        )               ,�   �   �   �                  , $render_slug�   �   �   �                  , $render_slug);5��    �                    9              	       �    �                   ,                    �       	                                      �    ~                        	              �    }   8                                   �    |   :               �                    �    {   <               �                    �    z                  U                    �    y                  G                    �    x   -               1      	              5�_�                    q        ����                                                                                                                                                                                                                                                                                                                            w   	       q           v        g�f     �   p   r   �              $this->index(               [   <                "post_id"    => $this->props["team_member"],   :                "position"   => $this->props["sub_title"],   8                "message"    => $this->props["message"],               ]   
        );5��    p          
                 �               5�_�                    q        ����                                                                                                                                                                                                                                                                                                                            q   	       q           v        g�g     �   p   q           5��    p                                           5�_�                    q        ����                                                                                                                                                                                                                                                                                                                            q   	       q           v        g�g   " �   p   q           5��    p                                           5�_�                    r       ����                                                                                                                                                                                                                                                                                                                            q   	       q           v        g�&     �   q   s   ~                  $this->index(�   r   s   ~    5��    q                     N                     5�_�                    x       ����                                                                                                                                                                                                                                                                                                                            q   	       q           v        g�-     �   w   y   ~                  ),5��    w                     S                     5�_�                    x       ����                                                                                                                                                                                                                                                                                                                            q   	       q           v        g�.   & �   p   s   ~      -        return $this->_render_module_wrapper(               sprintf($this->index(�   q   s   ~      !           sprintf( $this->index(5��    q                     V                     �    p   -               B                    5�_�                     o   $    ����                                                                                                                                                                                                                                                                                                                            q   	       q           v        g�5   ' �   n   p   ~      3    function render($attrs, $content, $render_slug)5��    n   $                  �                     5�_�      !               o       ����                                                                                                                                                                                                                                                                                                                            q   	       q           v        g�7   + �   n   ~          :    function render($attrs, $content = null, $render_slug)       {   -        return $this->_render_module_wrapper(   !            sprintf($this->index(                   [   @                    "post_id"    => $this->props["team_member"],   >                    "position"   => $this->props["sub_title"],   <                    "message"    => $this->props["message"],                   ]               )),               $render_slug   
        );       }   }    �   n   ~   p       �   o   p   p    �   n   o          :    function render($attrs, $content = null, $render_slug)       {   -        return $this->_render_module_wrapper(   !            sprintf($this->index(                   [   @                    "post_id"    => $this->props["team_member"],   >                    "position"   => $this->props["sub_title"],   <                    "message"    => $this->props["message"],                   ]               )),               $render_slug   
        );       }   }5��    n                      �      �              �    n                      �              �      5�_�                   !   o        ����                                                                                                                                                                                                                                                                                                                            o   	       o           v        g��     �               ~   <?php       /*    * Contact Card    */   .class Partners_Quote extends ET_Builder_Module   {   #    public $vb_support = 'partial';       !    public $selected_member = "";   3    public $selected_member_position = "asdasdasd";           function init()       {   E        $this->name = __('_ NOBEACH - Partners Quote', 'et_builder');   '        $this->slug = 'partners_quote';   M        $this->settings_text = esc_html__('Partners Settings', 'et_builder');       }           /**        * Disable fields        */   0    public function get_advanced_fields_config()       {           return array(   &            'background'     => false,   &            'borders'        => false,   &            'box_shadow'     => false,   &            'button'         => false,   &            'filters'        => false,   &            'fonts'          => false,   &            'margin_padding' => false,   %            'max_width'      => false   
        );       }           function get_fields()       {           return [   $            ...$this->get_members(),               'sub_title' => [   L                'label'           => esc_html__('Sub Title', 'et_builders'),   ,                'type'            => 'text',   4                'option_category' => 'basic_option',   4                'default'         => 'Onze partner',   +                'dynamic_content' => 'text'               ],               'message' => [   T                'label'           => esc_html__('Partner\'s Message', 'et_builder'),   0                'type'            => 'textarea',   4                'option_category' => 'basic_option',   T                'description'     => esc_html__('Partner\'s Message', 'et_builder'),   +                'dynamic_content' => 'text'               ]   
        ];       }           function index(array $atts)       {           ob_start();   $        $post_id = $atts["post_id"];   &        $position = $atts["position"];   $        $message = $atts["message"];               $posts = get_posts(               [   -                "post_type" => "team-member",   (                "post__in" => [$post_id]               ]   
        );       @        include __DIR__ . "/templates/partners-message.tpl.php";           return ob_get_clean();       }           function get_members()       {           $wp = new WP_Query(               [   ,                "post_type" => "team-member"               ]   
        );               $members = [];       -        foreach ($wp->get_posts() as $post) {   N            $members[$post->ID] = esc_html__($post->post_title, "et_builder");   	        }               return [               'team_member' => [   O                'label'           => esc_html__('Select Member', 'et_builder'),   .                'type'            => 'select',   .                'options'         => $members,   4                'option_category' => 'basic_option',               ]   
        ];       }       @    function shortcode_callback($atts, $content, $function_name)       {           return $this->index(               [   D                "post_id"   => $this->shortcode_atts["team_member"],   B                "position"  => $this->shortcode_atts["sub_title"],   @                "message"   => $this->shortcode_atts["message"],               ]   
        );       }       :    function render($attrs, $content = null, $render_slug)       {   -        return $this->_render_module_wrapper(   !            sprintf($this->index(                   [   @                    "post_id"    => $this->props["team_member"],   >                    "position"   => $this->props["sub_title"],   <                    "message"    => $this->props["message"],                   ]               )),               $render_slug   
        );       }   }       new Partners_Quote;5�5��