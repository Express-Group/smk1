<?php
	//$ExpireTime = 60; // seconds (= 1 mins)
	$ExpireTime = 240; // seconds (= 4 mins)

	$this->output->set_header("Expires: Sat, 26 Jul 1997 05:00:00 GMT");
	$this->output->set_header("Cache-Control: cache, must-revalidate");
	$this->output->set_header("Cache-Control: max-age=".$ExpireTime);
	$this->output->set_header("Pragma: cache");
?>
<?php
$css_path 		= image_url."css/FrontEnd/";
$js_path 		= image_url."js/FrontEnd/";
$images_path	= image_url."images/FrontEnd/";
 $settings = $this->widget_model->select_setting($viewmode);
//if (substr_count($_SERVER['HTTP_ACCEPT_ENCODING'], 'gzip')) ob_start("ob_gzhandler"); else ob_start();
if(count($section_details) > 0){
$index             = ($section_details['Noindexed']=='1')? 'NOINDEX' : 'INDEX';
$follow            = ($section_details['Nofollow'] == '1') ? 'NOFOLLOW' : 'FOLLOW';
$Canonicalurl      = (strtolower($section_details['URLSectionStructure'])=='home')? base_url() : base_url().$section_details['URLSectionStructure'];//($section_details['Canonicalurl']!='') ? $section_details['Canonicalurl'] : '';
$meta_title        = $section_details['MetaTitle'];
$meta_description  = $section_details['MetaDescription'];
$meta_keywords     = $section_details['MetaKeyword'];
$section_name      = $section_details['Sectionname'];
$section_img_path  = ($section_details['BGImage_path']!='')? image_url.$section_details['BGImage_path']: '';
}else{
	$index            = "";
	$follow           = "";
	$Canonicalurl     = "";
	$meta_title       = "";
	$meta_description = "";
	$meta_keywords    = "";
	$section_name     = "Clone widget Template";
	$section_img_path = "";
}
$page_variable = $this->input->get('per_page');
if($page_variable!='')
{
 if($this->uri->segment(1)!='topic'){

 $per_page = $settings['subsection_otherstories_count_perpage'];
 }else
 {
	
 $page_variable = $this->input->get('per_page');
 $per_page      = 15;
 }
 $page_variable = ($page_variable/$per_page)+1;
}
$titleTag = strip_tags($meta_title);
if($this->uri->segment(1)=='topic'){
	$topicName = trim(urldecode($this->uri->segment(2)));
	$topicName = str_replace('_',' ',$topicName);
	$titleTag = $topicName.' - Latest News on '.$topicName.' | Read Breaking News on Samakalika Malayalam';
	$meta_keywords = $topicName.', News on '.$topicName.', stories on '.$topicName.', articles on '.$topicName.', '.$topicName.' stories at samakalika Malayalam, '.$topicName.' news, '.$topicName.' latest news';
	$meta_description = $topicName.' - Get latest news on '.$topicName.'. Read Breaking News on '.$topicName.' updated and published at Samakalikamalayalam';
	$meta_title = $titleTag;
	$Canonicalurl = $Canonicalurl.'/'.urldecode($this->uri->segment(2));
}
$background_image = ($section_img_path!='')? 'style="background:url('.$section_img_path.') left;"' : "";
$section_img_path = ($section_img_path!='')? $section_img_path : image_url. imagelibrary_image_path.'logo/nie_logo_600X390.jpg';
?><!DOCTYPE HTML>
<html>
  <head lang="ml">
  <link rel="alternate" href="<?php echo $Canonicalurl;?>" hreflang="ml"/>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <!-- for-mobile-apps -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="title" content="<?php echo strip_tags($meta_title);?>" />
  <meta name="description" content="<?php echo $meta_description;?>">
  <meta name="keywords" content="<?php echo $meta_keywords;?>">
  <meta name="news_keywords" content="breaking news Malayalam, latest Kerala news, latest Malayalam news, Online Malayalam News<?php if($meta_keywords!=''){ echo ',';} ?><?php echo $meta_keywords;?>">
  <meta name="msvalidate.01" content="E3846DEF0DE4D18E294A6521B2CEBBD2" />
  <link rel="canonical" href="<?php echo $Canonicalurl;?>" />
  <meta property="og:type" content="website" />
  <meta property="og:title" content="<?php echo strip_tags($meta_title);?>"/>
  <meta property="og:image" content="<?php echo $section_img_path;?>"/>
  <meta property="og:site_name" content="Samakalika Malayalam"/>
  <meta property="og:description" content="<?php echo $meta_description;?>"/>
  <meta property="og:url" content="<?php echo $Canonicalurl;?>"/>
  <meta name="twitter:site" content="@samakalikam" />
  <meta name="twitter:title" content="<?php echo strip_tags($meta_title);?>" />
  <meta name="twitter:description" content="<?php echo $meta_description;?>" />
  <meta name="twitter:image" content="<?php echo $section_img_path;?>" />
  <meta name="twitter:card" content="<?php echo $section_img_path;?>" />
  <meta name="robots" content="<?php echo $index;?>, <?php echo $follow;?>">
  <?php $title_tag = ($section_name=="Home")? "Latest News, Breaking News, India News, Bollywood, World, Business, Sports &amp; Politics" : $section_name; ?>
  <?php if($section_name=="Home"){?> 
  <meta name="google-site-verification" content="PNYjuNZT6nWdRuUIdIahwBshpoR-Jg43qZCOfemOC10" />
  <meta name="facebook-domain-verification" content="iqmtimuvjctgwfu1lmaoxi5umzoxrc" />
  <meta name="p:domain_verify" content="e0001e5ce89ed0c9a5e34a79adbf7c93" />
  <meta name="msvalidate.01" content="7AE7E46B8B1979D40D9ED0E6E7C9FDF4" />
  <meta name="fb:app_id" content="114452938652867" />
  <meta name="svg-x-verification" content="28ce15a5f25454ac21d27910e3bc837973c7486b" />
  <meta name="alexaVerifyID" content="9iadfF2zj9QGy-0RQMdlqPsWyIU" />
  <meta name="author" content="Samakalika Malayalam" />
  <?php }?>
  <title><?php echo $titleTag;?><?php echo ($page_variable!='')? "- page".$page_variable: "";?></title>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:700' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
  <link rel="shortcut icon" href="<?php echo $images_path; ?>images/favicon.ico" type="image/x-icon" />
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
  <link rel="stylesheet" href="<?php echo $css_path; ?>css/combine_style.css?v=2.1" type="text/css">
  <link rel="stylesheet" href="<?php echo $css_path; ?>css/swiper.min.css" type="text/css">
  <script src="<?php echo $js_path; ?>js/swiper.min.js" type="text/javascript"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ if (window.scrollY == 0) window.scrollTo(0,1); }; </script>
  
<!-- Start Advertisement Script --> 
<?php 
if(SHOWADS):
	echo urldecode(@$header_ad_script);
	if(strtolower($section_details['URLSectionStructure'])=='home'){
		echo rawurldecode(stripslashes($settings['home_header_script']));
	}else{
		echo rawurldecode(stripslashes($settings['section_header_script']));
	}
endif;
?>
<!-- End Advertisement Script -->
<script type="text/javascript">
	window.GUMLET_CONFIG = {
		hosts: [{
			current: "images.samakalikamalayalam.com",
			gumlet: "images.samakalikamalayalam.com"
		}],
		lazy_load: true
	};
	(function(){d=document;s=d.createElement("script");s.src="https://cdn.gumlet.com/gumlet.js/2.0/gumlet.min.js";s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})();
</script>
  </head>
  <body <?php echo $background_image;?>>
  <?php 
	if($viewmode != "" && $viewmode == "live")
	{
	?>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-91400277-1', 'auto');
  ga('send', 'pageview');
  setTimeout("ga('send','event','adjusted bounce rate','page visit 60 seconds or more')",60000);

</script>
<script type="application/ld+json">
	{
		"@context": "http://schema.org",
		"@type": "WebSite",
		"name" : "Samakalikamalayalam",
		"url": "<?php echo BASEURL; ?>",
		"potentialAction": {
			"@type": "SearchAction",
			"target": "<?php echo BASEURL; ?>topic?search_term={search_term_string}",
			"query-input": "required name=search_term_string"
		}
	}
	</script>
	<script type="application/ld+json">
	{
		"@context" :"http://schema.org",
		"@type" : "Organization",
		"name" : "samakalikamalayalam",
		"url" : "<?php echo BASEURL; ?>", 
		"image": "<?php echo image_url; ?>images/FrontEnd/images/NIE-logo21.jpg",
		"logo": "<?php echo image_url; ?>images/FrontEnd/images/NIE-logo21.jpg",
		"sameAs" : ["https://www.facebook.com/samakalikamalayalam/","https://twitter.com/samakalikam"]
	}
	</script>

<!-- Begin comScore Tag -->
<script>
  var _comscore = _comscore || [];
  _comscore.push({ c1: "2", c2: "16833363" });
  (function() {
    var s = document.createElement("script"), el = document.getElementsByTagName("script")[0]; s.async = true;
    s.src = (document.location.protocol == "https:" ? "https://sb" : "http://b") + ".scorecardresearch.com/beacon.js";
    el.parentNode.insertBefore(s, el);
  })();
</script>
<noscript>
  <img src="https://sb.scorecardresearch.com/p?c1=2&c2=16833363&cv=2.0&cj=1" />
</noscript>
<!-- End comScore Tag -->

<?php	
	}
?>
<?php
echo $header;
echo $body. $footer; ?>
<script src="<?php echo $js_path; ?>js/slider-custom-lazy.min.js?v=1" type="text/javascript"></script> 
<script type="text/javascript">
	  <?php 
	  $section_id = $section_details['Section_id'];
	  $parent_section_id = $section_details['ParentSectionID'];
	  $mode = $content['mode']; ?>
	  var Section_id = '<?php echo $section_id;?>';
	  var PSection_id = '<?php echo $parent_section_id;?>';
	  var view_mode = '<?php echo $mode;?>';
	<?php  if(isset($html_header)&& $html_header==true){ ?>
	  var call_breadcrumb = 1;
	  <?php }else{ ?>
	    var call_breadcrumb = 0;
	   <?php }
	  if(isset($html_rightpanel)&& $html_rightpanel==true){ ?>
	    var call_otherstories = 1;
	  <?php }else{ ?>
	    var call_otherstories = 0;
	<?php  }?>
$(document).ready(function () {
<!--replace slick preview as arrow-->
	$('.slick-prev').addClass('fa fa-chevron-left');
	$('.slick-next').addClass('fa fa-chevron-right');	
	  
    $('.menu').affix({
	  offset: {
		top: $('header').height()
	  }
    });	
	$('.article_click').click(function(){localStorage.setItem("callback_section", window.location);});
});
</script>
<?php if($this->uri->segment(1)==folder_name || $this->uri->segment(1)=='topic'){ ?>
<script src="<?php echo $js_path; ?>js/bootstrap-datepicker.js" type="text/javascript"></script>
<?php } ?>
<script type="text/javascript">
 var base_url = "<?php echo base_url(); ?>";
 var css_url  = "<?php echo $css_path; ?>";
</script> 
<script src="<?php echo $js_path; ?>js/custom.js" type="text/javascript"></script>

<script src="<?php echo $js_path; ?>js/postscribe.min.js"></script>
<?php
$countryCode = ['US','EU'];
if(in_array(@$_SERVER['HTTP_CLOUDFRONT_VIEWER_COUNTRY'] , $countryCode) && SHOWADS==true):
?>
<script type="text/javascript">
    (function (){ var s,m,n,h,v,se,lk,lk1,bk; n=false; s= decodeURIComponent(document.cookie); m = s.split(';'); for(h=0;h<m.length;h++){ if(m[h]==' cookieagree=1'){n=true;break;}}if(n==false){v = document.createElement('div');v.setAttribute('style','position: fixed;left: 0px;right: 0px;height: auto;min-height: 15px;z-index: 2147483647;background: linear-gradient(90deg, #00456e 0%, #337ab7 35%, #00456e 100%);line-height: 15px;padding: 8px 18px;font-size: 14px;text-align: left;bottom: 0px;opacity: 1;font-family: "Roboto Condensed";color: #fff;');v.setAttribute('id','ckgre');se = document.createElement('span');se.setAttribute('style','padding: 5px 0 5px 0;float:left;');lk =document.createElement('button');lk.setAttribute('onclick','ckagree()');lk.setAttribute('style' , 'float: right;display: block;padding: 5px 8px;min-width: 100px;margin-left: 5px;border-radius: 25px;cursor: pointer;color: rgb(0, 0, 0);background: rgb(241, 214, 0);text-align: center;border: none;font-weight: bold;outline: none;');lk.appendChild(document.createTextNode("Agree"));	se.appendChild(document.createTextNode("We use cookies to enhance your experience. By continuing to visit our site you agree to our use of cookies."));lk1 = document.createElement('a');lk1.href=document.location.protocol+"//"+document.location.hostname+"/cookies-info";lk1.setAttribute('style','text-decoration: none;color: rgb(241, 214, 0);margin-left: 5px;');lk1.setAttribute('target','_BLANK');lk1.appendChild(document.createTextNode("More info"));se.appendChild(lk1);v.appendChild(se);v.appendChild(lk);bk = document.getElementsByTagName('body')[0];bk.insertBefore(v,bk.childNodes[0]);}})();function ckagree(){ document.cookie = "cookieagree=1;path=/";$('#ckgre').hide(1000, function(){ $(this).remove();});}
</script>
<?php
endif;
?>
</body>
</html>