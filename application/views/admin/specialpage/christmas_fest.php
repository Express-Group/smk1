 <!DOCTYPE html>
<html lang="en">
<head>
  <title><?php echo $title; ?></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="https://images.samakalikamalayalam.com/images/FrontEnd/images/favicon.ico" type="image/x-icon" />

  <link rel="stylesheet" href="<?php echo image_url; ?>special_page/bootstrap.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
   <link href="<?php echo image_url; ?>special_page/jquerysctipttop.css" rel="stylesheet" type="text/css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="<?php echo image_url; ?>special_page/bootstrap.min.js"></script>
   
  <style>
	@import url('https://fonts.googleapis.com/css?family=Gayathri&display=swap');
	body{
		position: relative;
    margin: 0;
    padding: 0;
    color: #fff;
    font-size: 18px;
    font-weight: 400;
    overflow-x: hidden;
    font-family: 'Gayathri', sans-serif;
	background: url('<?php echo image_url; ?>special_page/bg-christ.jpg');
	background-attachment:fixed;
    background-size: contain;
	}
	.block-img{
		padding: 1%;
		border-radius: 8px;
		border: 1px solid #eee;
		margin-bottom: 3%;
		background-size: contain;
		    position: relative;
	}
	.bg-gif{
		position: absolute;
		width: 100%;
		height: 100%;
		top: 0;
		background: url('<?php echo image_url; ?>special_page/bg-round.gif');
		z-index: -1;
	}

	.header{
		padding: 5px;
		background: #fff;
		border-bottom: 1px solid #e6e4e4;
		padding-bottom: 10px;
		text-align:center;
	}
	.header .col-md-1 img{
		margin-top: 8%;
	}
	.header .col-md-8 img{
		margin-left: 21%;
	}
	.fb{
		background: #4672db;
		color: #fff;
		padding: 10px 13px 0px;
		float: right;
		border-radius: 50%;
		margin-top: 2%;
	}
	.twit{
		background: #54bcf2;
		color: #fff;
		padding: 10px 11px 0px;
		float: right;
		border-radius: 50%;
		margin-right: 4%;
		margin-top: 2%;
	}
	.android{
		background: #a4c639;
		color: #fff;
		padding: 10px 11px 0px;
		float: right;
		border-radius: 50%;
		margin-right: 4%;
		margin-top: 2%;
	}
	.apple{
		background: #999999;
		color: #fff;
		padding: 10px 11px 0px;
		float: right;
		border-radius: 50%;
		margin-right: 4%;
		margin-top: 2%;
	}
	.uc_logo{
		width: 40%;
		margin: 0 44%;
	}
	section{margin-top:2%;}
	.hovereffect{
		color: #000;
		float:left;
		position:relative;
		width:100%;
		overflow: hidden;
		z-index: 999999;
	}
	.overlay{
		padding: 10px 10px 0;
		float:left;
		width:100%;
	}
	.overlay h2{
		font-weight: 700;
		padding-bottom: 9px;
		float:left;
		font-size: 24px;
		margin-top: 5px;
		width:100%;
	}
	.overlay h2 a{
		color:#fff;
		text-decoration:none !important;
	}
	.overlay .info{
		float:left;
		font-size: 14px;
		color:yellow;
	}
	.overlay div {
		float:left;
		text-align:left;
		width:100%;
		margin: 2% 0% 0% 0%;
	}
	.readmore{
		padding: 10px 20px 10px;
		background: green;
		color: #fff;
		margin-bottom: 2%;
		box-shadow: 1px 1px 1px #00000070;
		text-decoration: none !important;
		border-radius: 50%;
		float: right;
	}
	.news-icon{
		position: absolute;
		width: 21%;
		top: 40%;
		left: 37%;
	}
	.news-icon1{
		position: absolute;
		width: 21%;
		top: 44%;
		left: 37%;
	}
	.news-icon2{
		position: absolute;
		width: 21%;
		top: 36%;
		left: 37%;
	}
	

.hovereffect > a > .img-responsive {
  -webkit-transition: 0.6s ease;
  transition: 0.6s ease;
  width: 100%;
      border-radius: 8px;
}

.uc-browser{width:9%;margin-top:2%;}
.banner-img {
    transform-origin: center -20px;
    float:left;
    box-shadow: 5px 5px 10px rgba(0,0,0,0.5);
	width:100%;
}
@keyframes swing {
    0% { transform: rotate(3deg); }
    100% { transform: rotate(-3deg); }
}

.main-blog{
	float: left;
    width: 100%;
	margin: 3% 0 3%;
}
.img-blog{
	float: left;
    width: 33%;
}
.img-blog img{
	border-bottom:none;
}
.main-blog .overlay{
	width: 67%;
	padding: 10px 10px 0;
}
.gif-bell{
	position: absolute;
    top: -18px;
    right: -22px;
    width: 57px;
}
@media only screen and (max-width: 768px){
    .news-icon1,.news-icon2 {position: absolute; width: 21%;top: 56%;left: 37%;}
	.news-icon { position: absolute;width: 21%;top: 54%;left: 37%;}
	.gif-bell{display:none;}	
	.header .col-md-8 img{margin-left:0;width:100%;}
	.header .col-md-3{border-top: 1px solid #eee;margin-top: 16px;}
	.header .col-md-3 a{margin-top: 4%;}
	.header .col-md-3 .fb{margin-right: 21%;}
	.block-img{margin: 0 0 27px;}
	body{background-size: cover;}
	.overlay h2{font-size:22px;margin:0;}
	.img-blog , .main-blog .overlay{width:100%;}
	.overlay .info{font-size: 16px;}
	.uc_logo{margin:0;}
}

@media only screen and (max-width: 500px) {
    .group-logo{width:12%;}
	.main-logo{width:30%;margin-left: 4%;}
	.social_icons{display:none;}
	.second-col{margin-top:1%;}
	.uc-browser {width: 25%;margin-top: 2%;}
	.overlay h2{font-size:22px;}
}	
@media only screen and (max-width: 480px){
	.news-icon1{position: absolute; width: 21%;top: 42%;left: 37%;}
	.news-icon2 {position: absolute; width: 21%;top: 36%;left: 37%;}
	.news-icon { position: absolute;width: 21%;top: 41%;left: 37%;}		
}
@media only screen and (min-width : 1550px) {
	.group-logo{width:6%;}
	.header { padding: 5px; background: #fff; border-bottom: 1px solid #e6e4e4; padding-bottom: 20px;text-align: center;}
	.social_icons{margin-top:2%;}
	.uc-browser {width: 8%;margin-top: 3%;}
}
.bg-background{position:absolute;z-index:9;top:0;}
.pagination{width: 100%;text-align: center;margin-top: 3%;}
.pagination a{margin: 0 7px 0;background: red;color: #fff;text-decoration: none;padding: 6px 10px 0px;border-radius: 5px;border:1px solid red;overflow:scroll;}
.pagination strong{margin: 0 7px 0;background: #fff;color: red;text-decoration: none;padding: 6px 10px 0px;border-radius: 5px;border:1px solid red;}
footer{width:100%;background:#fff;color:#000;font-size: 16px;margin-top: 2%;padding: 1%;border-top: 2px solid red;}
footer p a {color: #7e7979 !important;}
  </style>
  <script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	ga('create', 'UA-91400277-1', 'auto');
	ga('send', 'pageview');
	setTimeout("ga('send','event','adjusted bounce rate','page visit 120 seconds or more')",120000);
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
</head>
<body id="imgs">
	<div class="bg-gif"></div>
	<header class="header">
		<div class="container">
			<div class="row">
				<div class="col-md-1 col-lg-1 col-sm-3 col-xs-3">
					<img class="img-responsive" src="https://images.dinamani.com/images/FrontEnd/images/group.jpg">
				</div>
				<div class="col-md-8 col-lg-8 col-sm-9 col-xs-9 text-center">
					<a href="https://www.samakalikamalayalam.com/" rel="nofollow" target="_blank"><img src="https://images.samakalikamalayalam.com/images/FrontEnd/images/NIE-logo21.jpg"> </a>
				</div>
				<div class="col-md-3 col-lg-3 col-sm-12 col-xs-12">
					<a class="fb" href="https://www.facebook.com/samakalikamalayalam/" rel="nofollow" target="_blank"><i class="fa fa-facebook"></i></a>  <a class="twit" href="https://twitter.com/samakalikam" rel="nofollow" target="_blank"><i class="fa fa-twitter"></i></a>
					<a class="android" href="https://play.google.com/store/apps/details?id=com.samakalikamalayalam&amp;hl=en" rel="nofollow" target="_blank"><i class="fa fa-android" aria-hidden="true"></i></a>
					<a class="apple" href="https://itunes.apple.com/us/app/samakalika-malayalam/id1248356148?ls=1&amp;mt=8" rel="nofollow" target="_blank"><i class="fa fa-apple" aria-hidden="true"></i></a>
					<img class="uc_logo" src="<?php echo image_url; ?>special_page/ucbrowser.png">
				</div>
			</div>
		</div>
		
	</header>
	<img src="<?php echo image_url; ?>special_page/x-mas-banner.jpg" class="img-responsive banner-img">
	<section>
		<div class="container">
		<div class="row" style="margin-bottom:5%;">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			</div>
		</div>
		<?php
		$i=1;
		$domain_name = BASEURL;
		$logo_prefix= 'nie';
		foreach($data as $article){
			$display_title = preg_replace('/<p[^>]*>(.*)<\/p[^>]*>/i', '$1', $article->title);
			$summary = preg_replace('/<p[^>]*>(.*)<\/p[^>]*>/i', '$1', $article->summary_html);
			$live_article_url = $domain_name. $article->url;
			$original_image_path = $article->article_page_image_path;
			if($original_image_path !='' && get_image_source($original_image_path, 1))
			{
				$imagedetails = get_image_source($original_image_path, 2);
				$imagewidth = $imagedetails[0];
				$imageheight = $imagedetails[1];	
				$Image600X390 	= str_replace("original","w600X390", $original_image_path);
				$show_image = image_url. imagelibrary_image_path . $Image600X390;
				
			}else{
				$show_image	= image_url. imagelibrary_image_path.'logo/'.$logo_prefix.'_logo_600X390.jpg';
			}
			if(strlen($summary) > 100){
				$description = mb_substr($summary , 0 ,97).'...';
			}else{
				$description =$summary;
			}
			if($i==1){
				echo '<div class="row block-img">';
				echo '<img class="gif-bell" src="'.image_url.'special_page/bell.gif">';
			}
			if($i==1){
				echo '<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">';
				echo '<div class="hovereffect">';
				echo '<a target="_BLANK" href="'.$live_article_url.'"><img class="img-responsive" src="'.$show_image.'" alt="'.$article->article_page_image_alt.'" title="'.$article->article_page_image_title.'"></a>';
				echo ' <div class="overlay" id="over">';
				echo '<h2><a href="'.$live_article_url.'">'.$display_title.'</a></h2>';
				echo '<p class="info">'.$description.' </p>';
				/* echo '<div><a target="_BLANK" href="'.$live_article_url.'" class="readmore"><i class="fa fa-angle-right" aria-hidden="true"></i></a></div>'; */
				echo '</div>';
				echo '</div>';
				echo '</div>';
			}
			if($i==2 || $i==3){
				if($i==2){
					echo '<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">';
				}
				echo '<div class="main-blog"><div class="hovereffect">';
				echo '<a class="img-blog" target="_BLANK" href="'.$live_article_url.'"><img class="img-responsive" src="'.$show_image.'" alt="'.$article->article_page_image_alt.'" title="'.$article->article_page_image_title.'"></a>';
				echo ' <div class="overlay" id="over">';
				echo '<h2><a href="'.$live_article_url.'">'.$display_title.'</a></h2>';
				echo '<p class="info">'.$description.' </p>';
				echo '</div>';
				echo '</div></div>';
				if($i==3){
					echo '</div>';
				}
			}
			
			if($i==3){
				echo '</div>';
				$i=1;
			}else{
				$i++;
			}
		}
		?> 
		<div class="pagination">
			<?php echo $pagination; ?>
		</div>
		</div>
	</section>
	<footer class="text-center">
		<div class="container">
			<p><b>Copyright - samakalikamalayalam.com <?php echo date('Y');?></a></p>
			<p> <a class="AllTopic" href="http://www.newindianexpress.com/" rel="nofollow" target="_blank">The New Indian Express | </a> <a class="AllTopic" href="http://www.kannadaprabha.com" rel="nofollow" target="_blank">Kannada Prabha | </a>  <a class="AllTopic" href="http://www.samakalikamalayalam.com/" rel="nofollow" target="_blank">Samakalika Malayalam | </a><a class="AllTopic" href="http://www.indulgexpress.com" rel="nofollow" target="_blank">Indulgexpress  | </a>  <a class="AllTopic" href="http://www.edexlive.com" rel="nofollow" target="_blank">Edex Live  | </a> <a class="AllTopic" href="http://www.cinemaexpress.com" rel="nofollow" target="_blank">Cinema Express | </a> <a class="AllTopic" href="http://www.eventxpress.com" rel="nofollow" target="_blank">Event Xpress  </a></p>
			<p> <a class="AllTopic" href="https://www.samakalikamalayalam.com/Contact-Us">Contact Us | </a> <a class="AllTopic" href="https://www.samakalikamalayalam.com.com/About-Us">About Us | </a> <a class="AllTopic" href="https://www.samakalikamalayalam.com/Privacy-Policy">Privacy Policy | </a> <a class="AllTopic" href="https://www.samakalikamalayalam.com/Terms-of-Use">Terms of Use | </a> <a class="AllTopic" href="https://www.samakalikamalayalam.com/Advertise-With-Us">Advertise With Us </a></p>
			<p><a class="AllTopic" href="https://www.samakalikamalayalam.com/keralam">കേരളം | </a> <a class="AllTopic" href="https://www.samakalikamalayalam.com/nilapad-opinion">നിലപാട് | </a> <a class="AllTopic" href="https://www.samakalikamalayalam.com/deseeyam-national">ദേശീയം | </a> <a class="AllTopic" href="https://www.samakalikamalayalam.com/pravasam-expatriate">പ്രവാസം | </a> <a class="AllTopic" href="https://www.samakalikamalayalam.com/rajyandaram-International">രാജ്യാന്തരം | </a> <a class="AllTopic" href="https://www.samakalikamalayalam.com/dhanakaaryam-financial">ധനകാര്യം | </a> <a class="AllTopic" href="https://www.samakalikamalayalam.com/chalachithram-Film">ചലച്ചിത്രം | </a> <a class="AllTopic" href="https://www.samakalikamalayalam.com/kaayikam-sports">കായികം | </a> <a class="AllTopic" href="https://www.samakalikamalayalam.com/aarogyam-healths">ആരോഗ്യം  </a></p>
		</div>
	</footer>
</body>
</html> 