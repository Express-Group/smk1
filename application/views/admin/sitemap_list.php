<?php header("Content-type: text/xml"); ?>
<?xml version="1.0" encoding="UTF-8"?>
<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
	<sitemap>
		<loc><?php echo BASEURL; ?>sitemap-main.xml</loc>
	</sitemap>
	<sitemap>
		<loc><?php echo BASEURL; ?>sitemap.xml</loc>
	</sitemap>
	<sitemap>
		<loc><?php echo BASEURL; ?>new-sitemap.xml</loc>
	</sitemap>
</sitemapindex>