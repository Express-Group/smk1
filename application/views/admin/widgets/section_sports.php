<?php 
//print_r($content); exit;
// widget config block Starts - This code block assign widget background colour, title and instance id. Do not delete it 
$widget_bg_color = $content['widget_bg_color'];
$widget_custom_title = $content['widget_title'];
$widget_instance_id =  $content['widget_values']['data-widgetinstanceid'];

$widgetsectionid = $content['sectionID'];

$main_sction_id 	= "";
$is_home = $content['is_home_page'];
// widget config block ends
//getting tab list for hte widget
$widget_instancemainsection	= $this->widget_model->get_widget_mainsection_config_rendering('', $widget_instance_id);

// Code block A - this code block is needed for creating simple tab widget. Do not delete
$domain_name =  base_url();
if($widget_custom_title == "")
$widget_custom_title = "Stories from other Cities";
$show_simple_tab = "";
$show_simple_tab .='
        <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
       <div class="MainSports"><div class="common_p">
          
		 ';
			  
										
													$url_structure = $content['url_structure'];
													$section_landing =  "0,".$content['sectionID'].", 'section', this, '".$url_structure."'";
													if($content['mode'] == "adminview")
																{
																	$url_structure = "admin/template_designer/load_saved_template/";
																}
																else
																{
																	$url_structure = $domain_name.$widget_custom_title.'/';
																}
															$string_value =  "0,".$content['sectionID'].", 'section'";	
													if($content['widget_title_link'] == 1)
													{
														$show_simple_tab.=	'<h5 class="SportsTitle"><div class="right_arrow"></div><a href="#" onclick="call_url('.$section_landing.')">'.$widget_custom_title.'</a></h5>';
													}
													else
													{
														$show_simple_tab.='<h5 class="SportsTitle"><div class="right_arrow"></div><a href="#">'.$widget_custom_title.'</a></h5>';
													}
													
													//$show_simple_tab.= '<div class="common_p">'; 
													$j = 0;
													// Adding content Block starts here
													foreach($widget_instancemainsection as $get_section)
													{								

													
														//getting content block - getting content list based on rendering mode
														//getting content block starts here . Do not change anything
														if($content['RenderingMode'] == "manual")
														{
															if($content['mode'] == "temporary")
															{
																$widget_instance_contents 	= $this->widget_model->get_WidgetInstancearticles_temporary_rendering($get_section['WidgetInstance_id'], $get_section['WidgetInstanceMainSection_id']); 
															}
															else
															{
																$widget_instance_contents 	= $this->widget_model->get_widgetInstancearticles_rendering($get_section['WidgetInstance_id'], $get_section['WidgetInstanceMainSection_id']); 																
															}
														}
														else
														{
															$widget_instance_contents = $this->widget_model->get_all_available_articles_auto($content['show_max_article'], $widget_instancemainsection[$j]['Section_ID']); 
														}
														//print_r($widget_instance_contents);exit;
														//getting content block ends here
														//Widget code block - code required for simple tab structure creation. Do not delete
														//Widget code block Starts here
														
														
													
														
														// content list iteration block - Looping through content list and adding it the list
														// content list iteration block starts here
														$i =1;
														
														foreach($widget_instance_contents as $get_content)
														{
															
															$show_image = "";
															// Code Block B - if rendering mode is manual then if custom image is available then assigning the image to a variable
															// Code Block B starts here - Do not change
															if($content['RenderingMode'] == "manual")
															{
																if($get_content['Image'] != '')
																{
																	$show_image = $get_content['Image'] ;
																}
															}
															//print_r($get_content);
															
															// Code Block B ends here
															// getting content details from database - Do not change
															
															 $from_contents_table = $this->template_design_model->required_widget_content_by_id($get_content['content_id'], '1');	
															// Code block C - if rendering mode is auto then this code blocks retrieve required image from article related image if content type is article (This widget uses only article- Do not change
															// Code block C  starts here
															//print_r($from_contents_table);
															$SourceURL = $content['widget_img_phy_path'];
																if($show_image =='')
																{
																	$image_data = $this->widget_model->get_image_data_widget($get_content['content_id'], $is_home);

																	
																	$image_size = $this->widget_model->get_widget_image_size($widget_instance_id, $i);
																	
																	if(count($image_size) > 0 ) // if image size supported for each the content display order exist in DB
																	{
																			// assigning correct sized images
																			if($image_size[0]['image_width'] == 600 && $image_size[0]['image_height'] == 390)
																			{
																				$Image600X390 	= str_replace("original","w600X390", @$image_data['ImagePhysicalPath']);
																				if (getimagesize(image_url_no . imagelibrary_image_path . $Image600X390) && $Image600X390 != '')
																					$show_image = image_url. imagelibrary_image_path . $Image600X390;
																				elseif(@$image_data['ImageBinaryData1'] != '')
																					$show_image = $image_data['ImageBinaryData1']; 
																				else
																					$show_image	= image_url. imagelibrary_image_path.'logo/nie_logo_600X390.jpg';
																								
																			}
																			elseif($image_size[0]['image_width'] == 600 && $image_size[0]['image_height'] == 300)
																			{
																				$Image600X300 	= str_replace("original","w600X300", @$image_data['ImagePhysicalPath']);
																				if (getimagesize(image_url_no . imagelibrary_image_path . $Image600X300) && $Image600X300 != '')
																					$show_image = image_url. imagelibrary_image_path . $Image600X300;
																				elseif(@$image_data['ImageBinaryData2'] != '')
																					$show_image = $image_data['ImageBinaryData2']; 
																				else
																					$show_image	= image_url. imagelibrary_image_path.'logo/nie_logo_600X300.jpg';
																			}
																			elseif($image_size[0]['image_width'] == 150 && $image_size[0]['image_height'] == 150)
																			{
																				$Image150X150 	= str_replace("original","w150X150", @$image_data['ImagePhysicalPath']);
																				if (getimagesize(image_url_no . imagelibrary_image_path . $Image150X150) && $Image150X150 != '')
																					$show_image = image_url. imagelibrary_image_path . $Image150X150;
																				elseif(@$image_data['ImageBinaryData4'] != '')
																					$show_image = $image_data['ImageBinaryData4']; 
																				else
																					$show_image	= image_url. imagelibrary_image_path.'logo/nie_logo_150X150.jpg';
																			}
																			elseif($image_size[0]['image_width'] == 100 && $image_size[0]['image_height'] == 65)
																			{
																				$Image100X65 	= str_replace("original","w100X65", @$image_data['ImagePhysicalPath']);
																				if (getimagesize(image_url_no . imagelibrary_image_path . $Image100X65) && $Image100X65 != '')
																					$show_image = image_url. imagelibrary_image_path . $Image100X65;
																				elseif(@$image_data['ImageBinaryData3'] != '')
																					$show_image = $image_data['ImageBinaryData3']; 
																				else
																					$show_image	= image_url. imagelibrary_image_path.'logo/nie_logo_100X65.jpg';
																			}
																	}
																	else // if image size details not available for the display order
																	{
																	
																				$Image600X390 	= str_replace("original","w600X390", @$image_data['ImagePhysicalPath']);
																				if (getimagesize(image_url_no . imagelibrary_image_path . $Image600X390) && $Image600X390 != '')
																					$show_image = image_url. imagelibrary_image_path . $Image600X390;
																				elseif(@$image_data['ImageBinaryData1'] != '')
																					$show_image = $image_data['ImageBinaryData1']; 
																				else
																					$show_image	= image_url. imagelibrary_image_path.'logo/nie_logo_600X390.jpg';
																		
																	}
																}
																// Code block C ends here
																
																// Assign block - assigning values required for opening the article in light box
																// Assign block starts here
																
																
																$parent_section = $this->widget_model->get_parent_sectionmane($from_contents_table[0]['Section_id'])->row_array();	
																$parent_sectionname = "";
																if(count($parent_section)>0)
																{
																	$parent_sectionname = $parent_section['Sectionname'].'/';
																}
																
																$contentID = $get_content['content_id'];
																$section_ID = $from_contents_table[0]['Section_id'];
																$contentTypeID = @$get_content['content_type_id'];
																	
																if($content['mode'] == "adminview")
																{
																	$url_structure = "admin/template_designer/load_saved_template/";
																}
																else
																{
																	$url_structure = $domain_name.$parent_sectionname.$from_contents_table[0]['Sectionname'].'/'.$from_contents_table[0]['url_title'].'/'.$get_content['content_id'];
																}
																// Assign block ends here
																// Assign article links block - creating links for  article summary Display article																$custom_title = $get_content['CustomTitle'];
																
																$string_value = $contentID.",".$section_ID.", 'article'";
																$custom_title = $get_content['CustomTitle'];
																
																$custom_title = str_replace('<p','<span',$custom_title);
																$custom_title = str_replace('</p>','</span>',$custom_title);
																
																
																if( trim(strip_tags($custom_title)) != '')
																{
																	
																	$custom_title = '<a href="javascript:;" class="article_click" >'.$custom_title.'</a>';
																	$display_title = $custom_title;
																}
																else
																{
																		$article_title = str_replace('<p','<span',$from_contents_table[0]['Title']);
																		$article_title = str_replace('</p>','</span>',$article_title);
																		
																	$custom_title = '<a href="javascript:;" class="article_click" >'.$article_title.'</a>';
																	$display_title = $article_title;
																		
																}	
															//  Assign article links block ends hers
															
															// Assign summary block - creating links for  article summary
																// Assign summary block starts here
																$custom_summary = $get_content['CustomSummary'];
																
															
															   
																if($i==1)
															  	{
																	$show_simple_tab.= '<img src="'.$show_image.'">
																	 <h4><a href="#">'.$display_title.'</a></h4>';
																}
																else
																{
																	$show_simple_tab.= '<p><i class="fa fa-angle-right"></i> <a href="#">'.$display_title.'</a></p>';
																}
															 
															$i =$i+1;	
															
														}
														//$show_simple_tab.='<div>';
														// content list iteration block ends here
														$j++;
														
													}
												
													//$show_simple_tab.='<div>';
													
													$show_simple_tab .='</div>';
														
			  										if($content['widget_title_link'] == 1)
													{
													$show_simple_tab .=' <div class="arrow_right"><a href="#" onclick="call_url('.$section_landing.')" class="landing-arrow">arrow</a></div>';
													}
													
													
													$show_simple_tab .='</div></div></div>';
													
												
echo $show_simple_tab;
?>
		
