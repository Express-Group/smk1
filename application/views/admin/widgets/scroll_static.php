<?php 
$widget_bg_color 		= $content['widget_bg_color'];
$widget_instance_id	 	= $content['widget_values']['data-widgetinstanceid'];
$view_mode              = $content['mode'];
$widget_instance_details= $this->widget_model->getWidgetInstance('', '','', '', $widget_instance_id, $content['mode']);
$widget_position = $content['widget_position'];	 
// widget config block ends
?>
<style>
	.container1 ul, .container1 ul li {margin: 0;list-style: none;clear:both;width:100%;color:#000;padding: 0 2px 0;margin-bottom:4%;}
	.container1 {height: 500px;line-height: 18px;border-bottom: 1px solid #337ab7; border-radius:0px; overflow: Hidden;color:#fff; padding: 2px 0;}
	.container1:hover{overflow-y:scroll;}
	.date-color{font-size: 12px;color: #00456e;float:left;width:16.4%;font-weight:bold;}
	.content-color{float:left;width:83.6%;} 

	.container1::-webkit-scrollbar {width: 12px;}
 .container1::-webkit-scrollbar-track { -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); border-radius: 10px;}
 .container1::-webkit-scrollbar-thumb {border-radius: 10px; -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5);}
</style>
<fieldset class="FieldTopic">
    <legend class="topic"><?php ($widget_instance_details['CustomTitle']=='')? print 'Highlights' : print $widget_instance_details['CustomTitle']; ?></legend>
</fieldset>
<div class="container1">
	
</div>
<script type="text/javascript" src="<?php print image_url.'js/jQuery.scrollText.js' ?>"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$.ajax({
				type:'post',
				cache:false,
				url:'<?php print base_url()?>user/scroll_data/render_news',
				success:function(result){
					$('.container1').html(result);
					$(function(){
						$(".container1").scrollText({
							'duration': 1500
						});
					}); 
				
				}
			
			});
		});
		 
	</script>

