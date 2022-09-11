<?php header ("Content-Type:text/xml");?>
<rss version="2.0" xmlns:content="http://purl.org/rss/1.0/modules/content/">
	<channel>
		<title>samakalikamalayalam.com Instant Articles</title>
		<link><?php echo BASEURL; ?></link>
		<description><?php echo htmlentities("Samakalikamalayalam.com is a unique Malayalam news portal with latest news updates on Kerala politics, Current affairs, Nation, Editorials, World News & Sports"); ?></description>
		<language>mal</language>
	    <?php echo $data; ?>
	</channel>
</rss>