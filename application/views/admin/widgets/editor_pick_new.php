<?php
$widget_bg_color = $content['widget_bg_color'];
$widget_custom_title = $content['widget_title'];
$widget_instance_id =  $content['widget_values']['data-widgetinstanceid'];
$widgetsectionid = $content['sectionID'];
$is_home              = $content['is_home_page'];
$view_mode            = $content['mode'];
$main_sction_id 	= "";
$domain_name =  base_url();
?>
<div class="special">
	<fieldset class="FieldTopic">
		<legend class="topic">Editor's Pick</legend>
		<?php
			$article=$this->widget_model->get_section_article_for_common_widgets(0, "live", 2);
		?>
	</fieldset>
	<div class="SpecialContent margin-bottom-10">
		<?php
				$j=1;
				$k=8;
				for($i=0;$i<count($article);$i++){
				if($i < 9):
					$widget_instance_contents = $this->widget_model->get_contentdetails_from_database($article[$i]['content_id'], 1, 'n', "live");
					if($j==1):
						print '<div class="special1">';
					endif;
					$image_url=str_replace('/original/','/w150X150/',$widget_instance_contents[0]['ImagePhysicalPath']);
					$image_url=image_url.imagelibrary_image_path.$image_url;
					$dummy_image	= image_url. imagelibrary_image_path.'logo/nie_logo_150X150.jpg';
					?>
					<div class="special1a">
						<div class="special_main_img">
							<figure class="special_img">
								<a  href="<?php print $widget_instance_contents[0]['url'];?>" class="article_click">
									<img src="<?php print $dummy_image;?>" data-src="<?php print $image_url;?>"  title ="<?php print $widget_instance_contents[0]['ImageCaption'];?>" alt = "<?php print $widget_instance_contents[0]['ImageAlt']; ?>">
								</a>
							</figure>
						</div>
						<?php
						$Title  = preg_replace('/<p[^>]*>(.*)<\/p[^>]*>/i', '$1',$article[$i]['CustomTitle']);
						$Title  = strip_tags($Title);
						?>
						<p><a  href="<?php print $widget_instance_contents[0]['url']; ?>" class="article_click segment" ><?php print $Title; ?></a></p>
					</div>
					<?php
					if($j==3):
						print '</div>';
						$j=1;
					else:
						$j++;
					endif;
					
				endif;
				}
				if($j==3|| $j==2):
					print '</div>';
				endif;
			?>
	</div>
	
</div>