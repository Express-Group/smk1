<style>
.social_icons {
    float: left;
    margin: 5px 0 5px !important;
}
</style>
<?php
$Details=$this->widget_model->GetPrintEdition($content['mode']);
?>
<div class="">   
	<div class="row">  
		<div class=" col-lg-12 col-md-12 col-sm-12 col-xs-12  "> 
			<div class="digi"> 
            	<div class=" col-lg-12 col-md-12 col-sm-12 col-xs-12 "><h2 style="font-size: 26px;" class="stands"><a href="<?php echo BASEURL.'malayalam-vaarika' ?>">മലയാളം വാരിക</a></h2></div>      
                <div class=" col-lg-12 col-md-12 col-sm-12 col-xs-12 ">   
                	<div class="print">
                    	<a href="<?php print $Details[0]->print_url ?>" target="_blank"><img data-src="<?php print image_url.'images/print_edition/'.$Details[0]->print_image; ?>" src="<?php print image_url; ?>images/FrontEnd/images/lazy1.png" alt="print_edition" /></a>
                    </div>       
                </div>          
            </div>             
		</div>    
	</div>
</div>