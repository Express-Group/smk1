<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 footer1">
  <!--<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
    <div class="news"> <a href="javascript:void(0)" class="scrollToTop"><i class="fa fa-arrow-up" aria-hidden="true"></i></a>
      <h3 class="foot_head">NEWS LETTER</h3>
      <div class="newsbox">
        <form class="navbar-form news_form" id="newsletter_form" name="newsletter_form" role="search" action="<?php echo base_url(); ?>user/common_widget/subscribe_newsletter">
          <div class="input-group">
            <input type="text" class="form-control ntb"  placeholder="Enter email for newsletter" name="email_newsletter" id="email-newsletter">
            <div class="input-group-btn">
              <button class="btn btn-default btn-back" id="submit_newsletter" type="button"><i class="fa fa-chevron-right"></i></button>
            </div>
          </div>
        </form>
        <span id="news_error_throw"></span> </div>
    </div>
  </div>-->
  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <?php 
$view_mode              = $content['mode'];
$social_urls            = $this->widget_model->select_setting($view_mode); 
$widget_bg_color 		= $content['widget_bg_color'];
$widget_custom_title 	= $content['widget_title'];
$widget_instance_id 	= $content['widget_values']['data-widgetinstanceid'];
$main_sction_id 		= "";
$page_type 				= 'section';
// widget config block ends
?>
    <div class="follow">
      <h3 class="foot_head">FOLLOW US</h3>
      <div class="footer_social"> <a class="fb" href="<?php echo $social_urls['facebook_url'];?>" target="_blank"><i class="fa fa-facebook"></i></a> <a class="google" href="<?php echo $social_urls['google_plus_url'];?>" target="_blank"><i class="fa fa-google-plus"></i></a> <a class="twit" href="<?php echo $social_urls['twitter_url'];?>"target="_blank"><i class="fa fa-twitter"></i></a> <a href="http://www.pinterest.com/newindianexpres" target="_blank"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a> <a href="https://instagram.com/newindianexpress/" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a> <a class="rss" href="<?php echo $social_urls['rss_url'];?>" target="_blank"><i class="fa fa-rss"></i></a> </div>
    </div>
  </div>
</div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 footer2bac">
  <div class="footer2">
    <p>Copyrights - samakalikamalayalam.com <?php echo date('Y'); ?></p>
    
    <p> <a class="AllTopic" href="http://www.newindianexpress.com" target="_blank" >The New Indian Express | </a><a class="AllTopic" href="http://www.dinamani.com" target="_blank" >Dinamani | </a> <a class="AllTopic" href="http://www.kannadaprabha.com" target="_blank" >Kannada Prabha | </a> <a class="AllTopic" href="http://www.malayalamvaarika.com" target="_blank" >Malayalam Vaarika | </a> <a class="AllTopic" href="http://www.indulgexpress.com" target="_blank" >Indulgexpress | </a> <a class="AllTopic" href="http://www.edexlive.com" target="_blank" >Edex Live </a> </p>
	<p> <a class="AllTopic" href="<?php echo base_url()."contact-us"; ?>"><?php echo "Contact Us"; ?> | </a> <a class="AllTopic" href="<?php echo base_url()."about-us"; ?>"><?php echo "About Us"; ?> | </a> <a class="AllTopic" href="<?php echo base_url()."privacy-policy"; ?>"><?php echo "Privacy Policy"; ?> | </a> <a class="AllTopic" href="<?php echo base_url()."topic"; ?>"><?php echo "Search"; ?> | </a> <a class="AllTopic" href="<?php echo base_url()."terms-of-use"; ?>"><?php echo "Terms of Use"; ?> | </a> <a class="AllTopic" href="<?php echo base_url()."advertise-with-us"; ?>"><?php echo "Advertise With Us"; ?> </a></p>
	<p> <a class="AllTopic" href="<?php echo base_url(); ?>"><?php echo "Home"; ?> | </a> <a class="AllTopic" href="<?php echo base_url()."keralam"; ?>"><?php echo "കേരളം"; ?> | </a> <a class="AllTopic" href="<?php echo base_url()."nilapad-opinion"; ?>"><?php echo "നിലപാട്"; ?> | </a> <a class="AllTopic" href="<?php echo base_url()."deseeyam-national"; ?>"><?php echo "ദേശീയം"; ?> | </a> <a class="AllTopic" href="<?php echo base_url()."pravasam-expatriate"; ?>"><?php echo "പ്രവാസം"; ?> | </a> <a class="AllTopic" href="<?php echo base_url()."rajyandaram-International"; ?>"><?php echo "രാജ്യാന്തരം"; ?> | </a> <a class="AllTopic" href="<?php echo base_url()."dhanakaaryam-financial"; ?>"><?php echo "ധനകാര്യം"; ?> | </a> <a class="AllTopic" href="<?php echo base_url()."chalachithram-Film"; ?>"><?php echo "ചലച്ചിത്രം"; ?> | </a> <a class="AllTopic" href="<?php echo base_url()."kaayikam-sports"; ?>"><?php echo "കായികം"; ?> | </a> <a class="AllTopic" href="<?php echo base_url()."aarogyam-healths"; ?>"><?php echo "ആരോഗ്യം"; ?>  </a></p>
  </div>
</div>
<script>
var $ = $.noConflict();
$(document).ready(function( $ ){
    scrollToTop.init( );
});
var scrollToTop =
{
    init: function(  ){
        //Check to see if the window is top if not then display button
        $(window).scroll(function(){
            if ($(this).scrollTop() > 100) {
                $('.scrollToTop').fadeIn();
            } else {
                $('.scrollToTop').fadeOut();
            }
        });
        // Click event to scroll to top
        $('.scrollToTop').click(function(){
            $('html, body').animate({scrollTop : 0},800);
            return false;
        });
    }
};
</script>