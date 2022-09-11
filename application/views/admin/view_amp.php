<!doctype html>

<?php
$Url=$this->uri->uri_string();
$CI = &get_instance();
$this->live_db = $CI->load->database('live_db', TRUE);
$Section=$this->live_db->query("SELECT `Section_id`, `MenuVisibility`,`Sectionname`, `SectionnameInHTML`, `DisplayOrder`,`Section_landing`, `IsSeperateWebsite`, `URLSectionStructure` FROM `sectionmaster` WHERE `Status` =  1 and `MenuVisibility`=1 AND `ParentSectionID` is NULL ORDER BY `DisplayOrder` ASC;")->result();
if($content_type==1){
	if($content_from=="live"){
		$Details=$this->live_db->query("SELECT title,url,summary_html,Section_id,article_page_content_html,article_page_image_path,article_page_image_title,agency_name,author_name,publish_start_date,last_updated_on,tags,status ,meta_Title FROM article WHERE content_id='".$content_id."' AND publish_start_date <=NOW()")->result();
		$SectionID=@$Details[0]->Section_id;
		$MoreArticle=$this->live_db->query("SELECT title,url,article_page_image_path FROM article WHERE Section_id='".$SectionID."' AND content_id!='".$content_id."' AND publish_start_date <=NOW() ORDER BY  last_updated_on DESC LIMIT 5")->result();
		$prev_id =$this->live_db->query("CALL select_section_previous_article('".$content_id."','".$SectionID."', '".$content_type."', 'ORDER BY content_id DESC LIMIT 1')")->row_array();
	}
	if($content_from=="archive"){
		$archive_db = $this->load->database('archive_db', TRUE);
		$TableName='article_'.$year;
		$Details=$archive_db->query("SELECT title,url,summary_html,Section_id,article_page_content_html,article_page_image_path,article_page_image_title,agency_name,author_name,publish_start_date,last_updated_on,tags,status , meta_Title FROM ".$TableName." WHERE content_id='".$content_id."' AND publish_start_date <=NOW()")->result();
		$SectionID=@$Details[0]->Section_id;
		$MoreArticle=$archive_db->query("SELECT title,url,article_page_image_path FROM ".$TableName." WHERE Section_id='".$SectionID."' AND content_id!='".$content_id."' AND publish_start_date <=NOW() ORDER BY  last_updated_on DESC LIMIT 5")->result();
		$prev_id=array();
		
	}
	


}
if(count($Details) > 0):
$published_date = date('dS  F Y h:i A' , strtotime($Details[0]->publish_start_date));
		$Updated_date = date('dS  F Y h:i A' , strtotime($Details[0]->last_updated_on));
		if ($Details[0]->article_page_image_path != '' && getimagesize(image_url_no . imagelibrary_image_path . $Details[0]->article_page_image_path)){
			$imagedetails = getimagesize(image_url_no . imagelibrary_image_path.$Details[0]->article_page_image_path);
			$imagewidth   = $imagedetails[0];
			$imageheight  = $imagedetails[1];
			if ($imageheight > $imagewidth){
				$Image 	= $Details[0]->article_page_image_path;
			}else{				
				$Image 	= str_replace("original","w600X390", $Details[0]->article_page_image_path);
			}
		$image_path = '';
		$image_path = image_url. imagelibrary_image_path . $Image;
		}else{
			$image_path	   = image_url. imagelibrary_image_path.'logo/nie_logo_600X390.jpg';
			$imagewidth   = 600;
			$imageheight  = 390;
			$image_caption = '';	
		}
		$OriginalUrl    = base_url().$Details[0]->url;
?>
<html amp>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no,minimal-ui">
		<title><?php print strip_tags($Details[0]->meta_Title); ?> - Samakalika Malayalam</title>
		<script async src="https://cdn.ampproject.org/v0.js"></script>
		<script async custom-element="amp-image-lightbox" src="https://cdn.ampproject.org/v0/amp-image-lightbox-0.1.js"></script>
		<script async custom-element="amp-social-share" src="https://cdn.ampproject.org/v0/amp-social-share-0.1.js"></script>
		<script async custom-element="amp-sidebar" src="https://cdn.ampproject.org/v0/amp-sidebar-0.1.js"></script>
		<script async custom-element="amp-iframe" src="https://cdn.ampproject.org/v0/amp-iframe-0.1.js"></script>
		<script async custom-element="amp-twitter" src="https://cdn.ampproject.org/v0/amp-twitter-0.1.js"></script>	
		<script async custom-element="amp-instagram" src="https://cdn.ampproject.org/v0/amp-instagram-0.1.js"></script>
		<script async custom-element="amp-analytics" src="https://cdn.ampproject.org/v0/amp-analytics-0.1.js"></script> 
		<script async custom-element="amp-ad" src="https://cdn.ampproject.org/v0/amp-ad-0.1.js"></script>
		<link rel="canonical" href="<?php print $OriginalUrl; ?>">
		<link rel="shortcut icon" href="<?php print image_url; ?>images/FrontEnd/images/favicon.ico" type="image/x-icon" />
		<style amp-boilerplate>body{-webkit-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-moz-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-ms-animation:-amp-start 8s steps(1,end) 0s 1 normal both;animation:-amp-start 8s steps(1,end) 0s 1 normal both}@-webkit-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-moz-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-ms-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-o-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}</style><noscript><style amp-boilerplate>body{-webkit-animation:none;-moz-animation:none;-ms-animation:none;animation:none}</style></noscript>
		

			<script type="application/ld+json">
			{
				"@context": "http:\/\/schema.org",
				"@type": "NewsArticle",
				"mainEntityOfPage": {
					"@type": "WebPage",
						"@id": "<?php print $OriginalUrl; ?>"
				},
				"headline": "<?php print strip_tags($Details[0]->title); ?>",
				"description": "<?php print strip_tags($Details[0]->summary_html); ?>",
				"datePublished": "<?php print $published_date; ?>",
				"dateModified": "<?php  print $Updated_date; ?>",
				"publisher": {
					"@type": "Organization",
					"name": "Samakalikamalayalam",
					"logo": {
						"@type": "ImageObject",
						"url": "<?php print image_url; ?>images/FrontEnd/images/NIE-logo21.jpg",
						"width": "270",
						"height": "67"
					}
				},
				"image": {
					"@type": "ImageObject",
					"url": "<?php print $image_path ?>",
					"width": "<?php print @$imagewidth ?>",
					"height": "<?php print @$imageheight ?>"
				}	
			}		
			</script>
		<style amp-custom>
			@font-face {font-family: BalooChettan; src: url(https://images.samakalikamalayalam.com/css/FrontEnd/fonts/BalooChettan-Regular.ttf);}
			@font-face {font-family: Nano; src: url(https://images.samakalikamalayalam.com/css/FrontEnd/fonts/NotoSansMalayalamUI-Regular.ttf);}
			 body {font-family: 'Baloo Chettan', cursive;line-height: 1; }
			.header{padding:10px;text-align:center;}
			.article{padding:10px;background: #f9f9f9; font-family: Nano; font-size: 14px;line-height: 1.5;}
			.articleImageContainer{margin:0;}
			amp-image-lightbox.ampimagecontainer{background:white;}
			figcaption{font-size:11px;padding: 5px;background: rgba(158, 158, 158, 0.31);}
			.article_heading{margin-top:5px;margin-bottom: 8px; color: #000;font-size: 19px;font-weight: normal; font-family: BalooChettan, cursive;line-height: 1.3;}
			.social-icons{margin-bottom:9px;}
			.author-details{margin: 0;font-size: 10px;margin-bottom: 5px;    font-family: nano;}
			.menu-icon{text-align: left;float: left;margin-top: 5px;margin-left: 7px;}

			#sidebar ul {margin: 0;padding: 0;list-style-type: none;    font-family: nano;}
			#sidebar ul li{padding: 10px 31px 7px;border-bottom: 1px solid rgba(158, 158, 158, 0.13);}
			#sidebar ul li a,#sidebar ul li a:hover,#sidebar ul li a:active,#sidebar ul li a:focus{color:#000;text-decoration:none;}
			.close-event{float: right; width: 100%;text-align: right;padding: 9px;}
			.tag_element{margin-left:8px;background: #fff;padding: 5px 4px 6px;border-radius: 12px;float:left;margin-bottom:6px;font-size: 13px;border: 1px solid #37474f;}
			.tag_element,.tag_element:active,.tag_element:focus,.tag_element:hover{text-decoration:none;color:#337ab7;}
			.tag_heading,.tags,.more_article{float:left;}
			.tags{padding:10px;background: #f9f9f9;}
			.more_article,.footer{padding:10px; font-family: nano;}
			.more_article_row{width:100%;float:left;margin-bottom: 7px;border-bottom: 1px solid #e1e1e1;padding-bottom: 10px;}
			.more_article_row amp-img{float:left;margin-right: 9px;}
			.more_article_row a,.more_article_row a:hover,.more_article_row a:active,.more_article_row a:focus{color:#337ab7;text-decoration:none;font-size: 12px;}
			.socialicons{margin-top: 5px;}
			.footer{background: #505050;color:#55acee;float:left;font-size:12px;}
			.footer_copyright{text-align:center;float:center;width:100%;margin-top:4px;}
			.footer a{text-decoration:none;color:#ccc;}
			.tags{width:95%; font-family: nano;}
			.tag_heading{font-size: 15px;}
			.amp-fixed{width: 100%;float: left;position: fixed;bottom: 0;background: #fff;height: 45px;box-shadow: -2px -2px 6px 0 rgba(0,0,0,.3);display:flex; z-index: 9999999999;}
			.amp-fixed amp-social-share{float:left;margin-bottom:0;border-right: 1px solid #fff;flex: 1;}
			#amp-next{width: 24%;float: left;background: #b3afaf;height: 45px;color: #fff;text-align: center;padding-top: 9px;text-decoration: none;}
			.article blockquote{margin:0 auto;}
			.more_article h3 { background: #337ab7;color: #fff;padding: 6px;border-radius: 5px;}
		</style>
	
	</head>
	<body>
		<amp-analytics type="googleanalytics">
			<script type="application/json">
			{
				"vars": {
				"account": "UA-91400277-1"
				},
				"triggers": {
					"trackPageview": {
						"on": "visible",
						"request": "pageview"
					}
				}
			}
			</script>
		</amp-analytics>

		<amp-analytics type="comscore"> 
		<script type="application/json">
		{
		"vars": {"c2": "16833363"},
		"extraUrlParams": {"comscorekw": "amp"}
		}
		</script>
		</amp-analytics> 
		
		<amp-sidebar id="sidebar" layout="nodisplay"  side="right" >
			<div class="close-event">
			<amp-img class="amp-close-image"
			src="<?php print image_url; ?>images/FrontEnd/images/close_btn.png"
			width="15"
			height="15"
			
			alt="close sidebar"
			on="tap:sidebar.close"
			role="button"
			tabindex="0"></amp-img>
			</div>
			<ul class="">
				<?php
					$m=1;
					foreach($Section as $SectionDetails):
						if(strip_tags($SectionDetails->SectionnameInHTML)=='Education'){
							break;
						}
						if($SectionDetails->URLSectionStructure=="Home"){
							$SectionUrl=BASEURL;
						}else{
							$SectionUrl=BASEURL.$SectionDetails->URLSectionStructure;
						}
						if($m < 14):
							print '<li><a href="'.$SectionUrl.'">'.strip_tags($SectionDetails->SectionnameInHTML).'</a></li>';
						endif;
						$m++;
					endforeach;
				?>
			</ul>
		</amp-sidebar>
		<div class="header">
		<amp-img alt="NIE menu"
			on="tap:sidebar.toggle"
			src="<?php print image_url; ?>images/FrontEnd/images/hamburger_menu.png"
			width="25"
			height="40"
			role="image"
			tabindex="1"
			class="menu-icon" style="top:3px;">
		</amp-img>
		<a href="<?php print BASEURL; ?>"><amp-img alt="Samakalikamalayalam logo"
			src="<?php print image_url; ?>images/FrontEnd/images/NIE-logo21.jpg"
			width="200"
			height="50">
		</amp-img></a>
		</div>
		<article class="article">
			<h2 class="article_heading"><?php print strip_tags($Details[0]->title); ?></h2>
			<?php
			if($Details[0]->author_name!=''){
				print '<span class="author-details">By '.$Details[0]->author_name.'| </span>';
			}
			if($Details[0]->agency_name!=''){
				print '<span class="author-details">'.$Details[0]->agency_name.' |</span>';
			}
			?>
			<span class="author-details">Published: <?php print $published_date; ?></span>
			<div class="socialicons">
				<amp-social-share type="email" width="38" height="33" class="social-icons"></amp-social-share>
				<amp-social-share type="facebook" data-param-app_id="114452938652867" width="38" height="33" class="social-icons"></amp-social-share>
				<amp-social-share type="gplus" width="38" height="33" class="social-icons"></amp-social-share>
				<amp-social-share type="twitter" width="38" height="33" class="social-icons"></amp-social-share>
			</div>
			<figure class="articleImageContainer">
				<amp-img on="tap:artilceImage" role="button" tabindex="0" src="<?php print $image_path; ?>" width=320 height=200 layout="responsive"></amp-img>
				<figcaption><?php print $Details[0]->article_page_image_title ?></figcaption>
			</figure>			
			<amp-image-lightbox class="ampimagecontainer" id="artilceImage" layout="nodisplay"></amp-image-lightbox>
			<amp-ad width=300 height=250 layout="responsive"
				type="doubleclick"
				data-slot="/1009127/NIE_AMP_TOP_300x250">
			</amp-ad>   


			

			<?php
			$Content= preg_replace('#(<[a-z ]*)(style=("|\')(.*?)("|\'))([a-z ]*>)#', '\\1\\6', $Details[0]->article_page_content_html);
			$Content=str_replace(['<img','</img>'],['<amp-img width="320" height="200" layout="responsive"','</amp-img'],$Content);
			$Content = preg_replace('/(<[^>]+) style=".*?"/i', '$1', $Content);
			$Content = preg_replace('/style=\\"[^\\"]*\\"/', '', $Content);
			$Content = preg_replace('/(<[^>]+) onclick=".*?"/i', '$1', $Content);
			$Content = preg_replace('/<g[^>]*>/i', '', $Content);
			$Content = str_replace(['<pm.n>','<itc.ns>','</pm.n>','</itc.ns>'],'',$Content);
			$Content = str_replace(['<p sourcefrom="ptitool">' , '<p sourcefrom=ptitool>'],'<p>',$Content); 
			$Content = str_replace(['<iframe allowtransparency="true"','</iframe>'] ,['<amp-iframe layout="responsive" sandbox="allow-scripts allow-same-origin allow-popups"','</amp-iframe>'],$Content);
			$Content = str_replace('<iframe' ,'<amp-iframe layout="responsive" sandbox="allow-scripts allow-same-origin allow-popups"',$Content);
			$Content = str_replace('width="100%"' , 'width="320px"' ,$Content);
			$Content = str_replace(['<script async="" src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>' ,'<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>','<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>' , '<script async="" src="//platform.instagram.com/en_US/embeds.js"></script>','<script async src="//www.instagram.com/embed.js">'] ,['','','' ,'' ,''],$Content);
			
			echo $Content;
			?>
			<amp-ad width=300 height=250  type="doubleclick" layout="responsive" data-slot="/1009127/NIE_AMP_2nd_300x250">
			   </amp-ad>

			<!-- <amp-ad width=300 height=250 type="doubleclick" data-slot="/42115163/IP_newindianexpress.com_300x250_BTF1_AMP"></amp-ad> -->

			<amp-ad width=300 height=250
				layout="responsive"
				type="doubleclick"
				data-slot="/3167926/NIE_AMP_art_300x250_1">
			</amp-ad>

			<amp-ad width=320 height=100
				layout="responsive"
				type="doubleclick"
				data-slot="/3167926/NIE_AMP_Art_320x100">
			</amp-ad>

		</article>
		
		
		<?php
		if($Details[0]->tags!=''):
				$Tags=explode(',',$Details[0]->tags);
				print '<div class="tags">';
					print '<a class="tag_heading"> Tags : </a>';
					echo '<div>';
				for($i=0;$i<count($Tags);$i++):
					if($Tags[$i]!=''):
						$tag_title = join( "_",( explode(" ", trim($Tags[$i]) ) ) );
						$tag_url_title = preg_replace('/[^A-Za-z0-9\_]/', '', $tag_title); 
						$TagUrl=BASEURL.'topic/'.$tag_url_title;
						print '<a class="tag_element" href="'.$TagUrl.'">'.$Tags[$i].'</a>';
					endif;
				endfor;
				echo '</div>';
				print '</div>';
			endif;
			?>
			
			
			<?php
			print '<div class="more_article">';
			if(count($MoreArticle) > 0){
				print '<h3>More from this section</h3>';
				foreach($MoreArticle as $MoreArticleDetails):
					if($MoreArticleDetails->article_page_image_path==""){
						$Image=image_url. imagelibrary_image_path.'logo/nie_logo_600X300.jpg';
					}else{
						$Image=image_url . imagelibrary_image_path.$MoreArticleDetails->article_page_image_path;
					}
					?>
						<div class="more_article_row">
						<amp-img on="tap:artilceImage" role="button" tabindex="0" src="<?php print $Image; ?>" width=121 height=67 style="border-radius: 6px;
    object-fit: cover;"></amp-img>
						<span><a href="<?php print BASEURL.$MoreArticleDetails->url; ?>"><?php print strip_tags($MoreArticleDetails->title); ?></a></span>
						</div>
					<?php
				endforeach;
			}
			?>
			
			<?php
				print '</div>';
			?>
			
			<div class="footer">
				<div class="footer_copyright">Copyright - Samakalikamalayalam.com <?php print date('Y'); ?></div>
				
				<div class="footer_copyright">
					<a href="http://www.newindianexpress.com" target="_blank">	The New Indian Express | </a>
					<a href="https://www.dinamani.com" target="_blank">Dinamani | </a>
					<a href="https://www.kannadaprabha.com" target="_blank">Kannada Prabha | </a>
					<a href="https://www.indulgexpress.com" target="_blank">Indulgexpress  | </a>
					<a href="https://www.edexlive.com" target="_blank">Edex Live  | </a>
					<a href="https://www.cinemaexpress.com" target="_blank">Cinema Express  | </a>
					<a href="http://www.eventxpress.com" target="_blank">Event Xpress </a>
				</div>
				
				<div class="footer_copyright"><a href="<?php print BASEURL?>contact-us">Contact Us | </a><a href="<?php print BASEURL?>careers">About Us | </a><a href="<?php print BASEURL?>about-us">Careers |  </a><a href="<?php print BASEURL?>privacy-policy">Privacy Policy | </a><a href="<?php print BASEURL?>topic">Search |  </a><a href="<?php print BASEURL?>terms-of-use">Terms of Use | </a><a href="<?php print BASEURL?>advertise-with-us">Advertise With Us </a></div>
			</div>
	</body>
</html>
<?php endif; ?>