<style>
.dynamic-table-width{
	width:20%;
	float:left;
	padding-right:9px;
	padding-left:9px;
	margin-top:0px; }
	
.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th{padding:1px !important}
.table-header-wrapper{
	background:#000;
	color:#ffe303; 
}
.table-header-wrapper-second{
	 	color:#fff; 
	 text-align:right;
}
.table-header-title{
	background:#7a0025;
	color:#fff; 
}
.table-body-content{
	background:#ebebeb; 
}
table tr td:nth-child(2), table tr td:nth-child(3), table tr td:last-child{ text-align:center; font-family:verdana, sans-serif; font-size:11px; }
table tr td:first-child{ padding:0 0 0 4px !important; font-family:verdana, sans-serif; font-size:11px; }

@media (max-width:479px){
.dynamic-table-width{ width:100%;margin-top:7px; }
}

@media (max-width:768px) and (min-width:480px){
.dynamic-table-width{ width:49%;margin-top:7px; }
}

@media (max-width:991px) and (min-width:768px){
.dynamic-table-width{ width:30%;margin-top:7px; }
}

@media (max-width:1199px) and (min-width:992px){
.dynamic-table-width{ width:20%;margin-top:7px; }
}
</style>

<?php
// widget config block Starts - This code block assign widget background colour, title and instance id. Do not delete it 
$widget_bg_color        = $content['widget_bg_color'];
$widget_custom_title    = $content['widget_title'];
$widget_instance_id     = $content['widget_values']['data-widgetinstanceid'];
$widgetsectionid        = $content['sectionID'];
$main_sction_id 	    = "";
$widget_section_url     = $content['widget_section_url'];
$is_home                = $content['is_home_page'];
$view_mode              = $content['mode'];
$domain_name            =  base_url();
$show_simple_tab        = "";
$max_article            = $content['show_max_article'];
$render_mode            = $content['RenderingMode'];
/*----widgetbconfig ends here------*/
$Template .='<div class="row dynamic-table-rendered-container">';
$Template .='</div>';
echo $Template;
?>
<script>
$(document).ready(function(){
	$.ajax({
		type:'post',
		cache:false,
		url:'<?php print BASEURL ?>user/commonwidget/GetDynamicTables',
		success:function(result){
			$('.dynamic-table-rendered-container').html(result);
		}
	});

});
setInterval(function(){
console.log(1);
$.ajax({
		type:'post',
		cache:false,
		url:'<?php print BASEURL ?>user/commonwidget/GetDynamicTables',
		success:function(result){
			$('.dynamic-table-rendered-container').html(result);
		}
	});
},6000);
</script>