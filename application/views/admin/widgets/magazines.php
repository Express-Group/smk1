<?php 
// widget config block Starts - This code block assign widget background colour, title and instance id. Do not delete it 
$widget_bg_color     = $content['widget_bg_color'];
$widget_custom_title = $content['widget_title'];
$widget_instance_id  = $content['widget_values']['data-widgetinstanceid'];
$main_sction_id 	 = $content['sectionID'];
$widget_section_url  = $content['widget_section_url'];
$is_home             = $content['is_home_page'];
$is_summary_required = $content['widget_values']['cdata-showSummary'];
$view_mode           = $content['mode'];
$max_article         = $content['show_max_article'];
$render_mode         = $content['RenderingMode'];
// widget config block ends
// Code block A - this code block is needed for creating simple tab widget. Do not delete
$domain_name     =  base_url();
$show_simple_tab = "";
$show_simple_tab .='<div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bottom-space-10" '.$widget_bg_color.'>
            <div class="magazine">
                <div class="magazine_topic">';

		if($content['widget_title_link'] == 1)
		{
			$show_simple_tab.=	'<figure class="magazine_title1"><a href="'.$widget_section_url.'">'.$widget_custom_title.'</a>
			<div class="right_arrow"></div>
			</figure>';
		}
		else
		{
			$show_simple_tab.=	'<figure class="magazine_title1">'.$widget_custom_title.
			'<div class="right_arrow"></div>
			</figure>';
		}
		
		$show_simple_tab .= '<div class="right_arrow"></div>
							</div> ';

			//getting content block - getting content list based on rendering mode
			//getting content block starts here . Do not change anything
			if($content['RenderingMode'] == "manual")
			{
			$content_type = $content['content_type_id'];  // manual article content type
			$widget_instance_contents 	= $this->widget_model->get_widgetInstancearticles_rendering($widget_instance_id , " " ,$content['mode'], $max_article); 
				$get_content_ids = array_column($widget_instance_contents, 'content_id'); 
				$get_content_ids = implode("," ,$get_content_ids); 
			$widget_contents = array();
			if($get_content_ids!='')
			{
				$widget_instance_contents1 = $this->widget_model->get_contentdetails_from_database($get_content_ids, $content_type, $is_home, $view_mode);	
				foreach ($widget_instance_contents as $key => $value) {
					foreach ($widget_instance_contents1 as $key1 => $value1) {
						if($value['content_id']==$value1['content_id']){
							$widget_contents[] = array_merge($value, $value1);
						}
					}
				}
			}	
			}
			else
			{
			$content_type = $content['content_type_id'];  // auto article content type
			$widget_contents = $this->widget_model->get_all_available_articles_auto($max_article, $content['sectionID'] , $content_type ,  $content['mode'], $is_home);
			}
			
			$i =1;
		if(count($widget_contents)>0)
		{	
			foreach($widget_contents as $get_content)
			{
			    $original_image_path = "";
				$imagealt            = "";
				$imagetitle          = "";
				$custom_title        = "";
				$custom_summary      = "";
				if($render_mode == "manual")
				{
					if($get_content['custom_image_path'] != '')
					{
						$original_image_path = $get_content['custom_image_path'];
						$imagealt            = $get_content['custom_image_title'];	
						$imagetitle          = $get_content['custom_image_alt'];												
					}
					$custom_title   = $get_content['CustomTitle'];
					$custom_summary = $get_content['CustomSummary'];
				}

						if($original_image_path =="")                                                // from cms || Live table    
						{
							   $original_image_path  = $get_content['ImagePhysicalPath'];
							   $imagealt             = $get_content['ImageCaption'];	
							   $imagetitle           = $get_content['ImageAlt'];	
						}
				

			$show_image="";
				if($original_image_path !='' && get_image_source($original_image_path, 1))
					{
						$imagedetails = get_image_source($original_image_path, 2);
						$imagewidth = $imagedetails[0];
						$imageheight = $imagedetails[1];	
					
						
						if($i==1 || $i==2)
						{
						    if ($imageheight > $imagewidth)
							{
								$Image600X300 	= $original_image_path;
							}
							else
							{
							    $Image600X300  = str_replace("original","w600X300", $original_image_path);
							}
							if (get_image_source($Image600X300, 1) && $Image600X300 != '')
							{
								$show_image = image_url. imagelibrary_image_path . $Image600X300;
							}
							else {
								$show_image	= image_url. imagelibrary_image_path.'logo/nie_logo_600X300.jpg';
							}
							$dummy_image	= image_url. imagelibrary_image_path.'logo/nie_logo_600X300.jpg';
						}
						else
						{
						  if ($imageheight > $imagewidth)
							{
								$Image600X390 	= $original_image_path;
							}
							else
							{
						        $Image600X390  = str_replace("original","w600X390", $original_image_path);
							}
							if (get_image_source($Image600X390, 1) && $Image600X390 != '')
							{
								$show_image = image_url. imagelibrary_image_path . $Image600X390;
							}
							else {
								$show_image	= image_url. imagelibrary_image_path.'logo/nie_logo_600X390.jpg';
							}
							$dummy_image	= image_url. imagelibrary_image_path.'logo/nie_logo_600X390.jpg';
						}
					}
					else
					{
						if($i==1 || $i==2)
						{
							$show_image	= image_url. imagelibrary_image_path.'logo/nie_logo_600X300.jpg';
							$dummy_image	= image_url. imagelibrary_image_path.'logo/nie_logo_600X300.jpg';
						}
						else{
						$show_image	= image_url. imagelibrary_image_path.'logo/nie_logo_600X390.jpg';
						$dummy_image	= image_url. imagelibrary_image_path.'logo/nie_logo_600X390.jpg';
						}
					}
				
				$content_url = $get_content['url'];  //article url
				$param = $content['close_param']; //page parameter
				$live_article_url = $domain_name.$content_url.$param;
				
					if( $custom_title == '')
					{
						$custom_title = $get_content['title'];
					}	
					$display_title = preg_replace('/<p[^>]*>(.*)<\/p[^>]*>/i', '$1' ,$custom_title);
					$display_title = '<a  href="'.$live_article_url.'" class="article_click" >'.$display_title.'</a>';
				//  Assign article links block ends hers
				
				// Assign summary block - creating links for  article summary
					// Assign summary block starts here
				
					if( $custom_summary == '' && $render_mode=="auto")
					{
						$custom_summary =  $get_content['summary_html'];
					}
					$summary  = preg_replace('/<p[^>]*>(.*)<\/p[^>]*>/i', '$1', $custom_summary);
					// Assign summary block starts here
					
					// display title and summary block starts here
					
					if($i == 1) {
						
						$show_simple_tab.= '<div class="magazine1">
						   <div class="magazine1ab">
							<div class="magazine1a">
							<h6 class="subtopic">'.$display_title.'</h6>';
							if($is_summary_required== 1){	
							$show_simple_tab.= '<p class="summary">'.$summary.'</p>';
							}
							$show_simple_tab.= '<div class="right_arrow"></div>
							<div class="bottom_arrow"></div>
						  </div>
							<div class="magazine1b">

							<figure> <a  href="'.$live_article_url.'"  class="article_click" ><img src="'.$dummy_image .'" data-src="'.$show_image .'" title = "'.$imagetitle.'" alt = "'.$imagealt.'"></a> </figure>

						  </div>
						  </div>
						';
						
						if($i == count($widget_contents))
						{
							$show_simple_tab.= '</div>';
						}
						
					} else if($i == 2) {
						
						$show_simple_tab.= '
						   <div class="magazine1cd">
							<div class="magazine1c">

								<figure> <a  href="'.$live_article_url.'"  class="article_click" ><img src="'.$dummy_image .'" data-src="'.$show_image .'" title = "'.$imagetitle.'" alt = "'.$imagealt.'"></a> </figure>

						  </div>
							<div class="magazine1d">
							<h6 class="subtopic">'.$display_title.'</h6>';
							if($is_summary_required== 1){	
							$show_simple_tab.= '<p class="summary">'.$summary.'</p>';
							}
							$show_simple_tab.= '<div class="left_arrow"></div>
							<div class="top_arrow"></div>
						  </div>
						  </div></div>';
						
					} else if($i == 3) {
																				
						$show_simple_tab.= '<div class="magazine2">
							<div class="maga_rel">

								<figure> <a  href="'.$live_article_url.'"  class="article_click" ><img src="'.$dummy_image .'" data-src="'.$show_image .'" title = "'.$imagetitle.'" alt = "'.$imagealt.'"></a> </figure>

								<div class="maga_abs">
								<div class="posi_rel">'.$display_title.'
									<div class="right_arrow"></div>
								  </div>
							  </div>
							  </div>';
							if($is_summary_required== 1){	
							$show_simple_tab.= '<p class="summary">'.$summary.'</p>';
							}
						 $show_simple_tab.= '</div>';
						
					}
					
					// display title and summary block ends here					
					//Widget design code block 1 starts here																
				//Widget design code block 1 starts here			
				$i =$i+1;							  
			}
	            // content list iteration block ends here
			 }
	  elseif($view_mode=="adminview")
	 {
		 $show_simple_tab .='<div class="margin-bottom-10">'.no_articles.'</div>';
	 }
		// Adding content Block ends here
		
		$show_simple_tab .='</div>';
		if($content['widget_title_link'] == 1)
		{
		$show_simple_tab .='<div class="arrow_right"><a href="'.$widget_section_url.'"  class="landing-arrow">arrow</a></div>';
		}
		$show_simple_tab .=' </div>
								  </div>';
echo $show_simple_tab;
?>
