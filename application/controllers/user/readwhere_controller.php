<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class readwhere_controller extends CI_Controller{
	
	public function __construct(){
		parent::__construct();
		$this->load->model("admin/widget_model");
		$CI = &get_instance();
		$this->live_db = $CI->load->database('live_db', TRUE);
		$this->load->library("memcached_library");
	}
	
	public function index(){
		$sectionId = $this->uri->segment(2);
		$sectionDetails  =  $this->widget_model->get_sectionDetails($sectionId, "live");
		$parentSectionName ='';
		if(count($sectionDetails) > 0){
			if($sectionDetails['ParentSectionID']!=''&& $sectionDetails['ParentSectionID']!=0 ){
				$parentSectionDetails = $this->widget_model->get_sectionDetails($sectionDetails['ParentSectionID'], "live");
				$parentSectionName = strtolower($parentSectionDetails['URLSectionName']);
			}
			$sectionName = strtolower($sectionDetails['URLSectionName']);
			switch ($sectionName){
				case ($sectionName == "galleries" || $sectionName == "photos" || $parentSectionName=="galleries" ||  $parentSectionName=="photos"):
					$contentType = 3;
					$query = "SELECT a.content_id, a.section_id, a.section_name, a.title, a.url, a.summary_html, a.first_image_path, a.first_image_title, a.first_image_alt, a.publish_start_date, a.last_updated_on, a.agency_name, a.author_name, a.tags FROM gallery AS a LEFT JOIN gallery_section_mapping AS b ON a.content_id=b.content_id WHERE b.section_id IN (SELECT Section_id FROM sectionmaster WHERE IF(ParentSectionID !='0', ParentSectionID, Section_id) = ".$sectionId." OR Section_id = ".$sectionId.") AND a.status='P' AND a.publish_start_date < NOW() GROUP BY a.content_id ORDER BY a.publish_start_date DESC LIMIT 20"; 
					break;
				case ($sectionName == "videos" || $parentSectionName=="videos"):
					$contentType = 4;
					$query = "SELECT a.content_id, a.section_id, a.section_name, a.title, a.url, a.summary_html, a.video_script, a.video_image_path, a.video_image_title, a.video_image_alt, a.publish_start_date, a.last_updated_on, a.agency_name, a.author_name, a.tags FROM video AS a LEFT JOIN video_section_mapping AS b ON a.content_id=b.content_id WHERE b.section_id IN (SELECT Section_id FROM sectionmaster WHERE IF(ParentSectionID !='0', ParentSectionID, Section_id) = ".$sectionId." OR Section_id = ".$sectionId.") AND a.status='P' GROUP BY a.content_id ORDER BY a.publish_start_date DESC LIMIT 20"; 
					break;
				default:
					$contentType = 1;
					$query = "SELECT a.content_id, a.section_id, a.section_name, a.title, a.url, a.summary_html, a.article_page_content_html, a.article_page_image_path, a.article_page_image_title, a.article_page_image_alt, a.publish_start_date, a.last_updated_on, a.agency_name, a.author_name, a.tags FROM article AS a LEFT JOIN article_section_mapping AS b ON a.content_id=b.content_id WHERE b.section_id IN (SELECT Section_id FROM sectionmaster WHERE IF(ParentSectionID !='0', ParentSectionID, Section_id) = ".$sectionId." OR Section_id = ".$sectionId.") AND a.status='P' GROUP BY a.content_id ORDER BY a.publish_start_date DESC LIMIT 20";
			}
			if(!$this->memcached_library->get($query) && $this->memcached_library->get($query) == ''){
				$data['content'] = $this->live_db->query($query)->result_array();
				$this->memcached_library->add($query,$data['content']);
			}else{
				$data['content']  = $this->memcached_library->get($query);
			}
			$data['sectionDetails'] = $sectionDetails;
			$data['contentType'] = $contentType;
			$data['baseUrl'] = base_url();
			$this->load->view('admin/readwhere_view',$data);
			
		}else{
			show_404();
		}
	}
	
	public function archive(){
		$sectionId = $this->uri->segment(2);
		if($_GET['from'])
		$from	=	$_GET['from'];
		else
		$from	= 0;
	
	
		$sectionDetails  =  $this->widget_model->get_sectionDetails($sectionId, "live");
		$parentSectionName ='';
		if(count($sectionDetails) > 0){
			if($sectionDetails['ParentSectionID']!=''&& $sectionDetails['ParentSectionID']!=0 ){
				$parentSectionDetails = $this->widget_model->get_sectionDetails($sectionDetails['ParentSectionID'], "live");
				$parentSectionName = strtolower($parentSectionDetails['URLSectionName']);
			}
			$sectionName = strtolower($sectionDetails['URLSectionName']);
			switch ($sectionName){
				case ($sectionName == "galleries" || $sectionName == "photos" || $parentSectionName=="galleries" ||  $parentSectionName=="photos"):
					$contentType = 3;
					$query = "SELECT a.content_id, a.section_id, a.section_name, a.title, a.url, a.summary_html, a.first_image_path, a.first_image_title, a.first_image_alt, a.publish_start_date, a.last_updated_on, a.agency_name, a.author_name, a.tags FROM gallery AS a LEFT JOIN gallery_section_mapping AS b ON a.content_id=b.content_id WHERE b.section_id IN (SELECT Section_id FROM sectionmaster WHERE IF(ParentSectionID !='0', ParentSectionID, Section_id) = ".$sectionId." OR Section_id = ".$sectionId.") AND a.status='P' AND a.publish_start_date < NOW() GROUP BY a.content_id ORDER BY a.publish_start_date ASC LIMIT {$from}, 500"; 
					break;
				case ($sectionName == "videos" || $parentSectionName=="videos"):
					$contentType = 4;
					$query = "SELECT a.content_id, a.section_id, a.section_name, a.title, a.url, a.summary_html, a.video_script, a.video_image_path, a.video_image_title, a.video_image_alt, a.publish_start_date, a.last_updated_on, a.agency_name, a.author_name, a.tags FROM video AS a LEFT JOIN video_section_mapping AS b ON a.content_id=b.content_id WHERE b.section_id IN (SELECT Section_id FROM sectionmaster WHERE IF(ParentSectionID !='0', ParentSectionID, Section_id) = ".$sectionId." OR Section_id = ".$sectionId.") AND a.status='P' GROUP BY a.content_id ORDER BY a.publish_start_date ASC LIMIT {$from}, 500"; 
					break;
				default:
					$contentType = 1;
					$query = "SELECT a.content_id, a.section_id, a.section_name, a.title, a.url, a.summary_html, a.article_page_content_html, a.article_page_image_path, a.article_page_image_title, a.article_page_image_alt, a.publish_start_date, a.last_updated_on, a.agency_name, a.author_name, a.tags FROM article AS a LEFT JOIN article_section_mapping AS b ON a.content_id=b.content_id WHERE b.section_id IN (SELECT Section_id FROM sectionmaster WHERE IF(ParentSectionID !='0', ParentSectionID, Section_id) = ".$sectionId." OR Section_id = ".$sectionId.") AND a.status='P' GROUP BY a.content_id ORDER BY a.publish_start_date ASC LIMIT {$from}, 500";
			}
			if(!$this->memcached_library->get($query) && $this->memcached_library->get($query) == ''){
				$data['content'] = $this->live_db->query($query)->result_array();
				$this->memcached_library->add($query,$data['content']);
			}else{
				$data['content']  = $this->memcached_library->get($query);
			}
			$data['sectionDetails'] = $sectionDetails;
			$data['contentType'] = $contentType;
			$data['baseUrl'] = base_url();
			$this->load->view('admin/readwhere_view',$data);
			
		}else{
			show_404();
		}
	}
	
	public function article(){
		$url = trim(urldecode(($this->input->get('url')!='')? $this->input->get('url') : $this->input->post('url')));
		if($url!=''){
			$urlSegment = $sectionSegment = explode('/',$url);
			array_splice($sectionSegment , count($sectionSegment)-4);
			$sectionSegment = implode('/',$sectionSegment);
			$contentID = explode('.',$urlSegment[count($urlSegment)-1]);
			$contentID = explode('-',$contentID[0]); 
			$contentID = $contentID[count($contentID)-1];
			$sectionDetails = $this->live_db->query("SELECT * FROM sectionmaster WHERE URLSectionStructure='".$sectionSegment."'")->row_array();
			$parentSectionName ='';
			if(count($sectionDetails) > 0){
				if($sectionDetails['ParentSectionID']!=''&& $sectionDetails['ParentSectionID']!=0 ){
					$parentSectionDetails = $this->widget_model->get_sectionDetails($sectionDetails['ParentSectionID'], "live");
					$parentSectionName = strtolower($parentSectionDetails['URLSectionName']);
				}
				$sectionName = strtolower($sectionDetails['URLSectionName']);
				switch ($sectionName){
					case ($sectionName == "galleries" || $sectionName == "photos" || $parentSectionName=="galleries" ||  $parentSectionName=="photos"):
						$contentType = 3;
						$query = "SELECT a.content_id, a.section_id, a.section_name, a.title, a.url, a.summary_html, a.first_image_path, a.first_image_title, a.first_image_alt, a.publish_start_date, a.last_updated_on, a.agency_name, a.author_name, a.tags FROM gallery AS a WHERE a.content_id='".$contentID."' AND a.status='P' AND a.publish_start_date < NOW()"; 
						break;
					case ($sectionName == "videos" || $parentSectionName=="videos"):
						$contentType = 4;
						$query = "SELECT a.content_id, a.section_id, a.section_name, a.title, a.url, a.summary_html, a.video_script, a.video_image_path, a.video_image_title, a.video_image_alt, a.publish_start_date, a.last_updated_on, a.agency_name, a.author_name, a.tags FROM video AS a WHERE a.content_id='".$contentID."' AND a.status='P' AND a.publish_start_date < NOW()"; 
						break;
					default:
						$contentType = 1;
						$query = "SELECT a.content_id, a.section_id, a.section_name, a.title, a.url, a.summary_html, a.article_page_content_html, a.article_page_image_path, a.article_page_image_title, a.article_page_image_alt, a.publish_start_date, a.last_updated_on, a.agency_name, a.author_name, a.tags FROM article AS a WHERE a.content_id='".$contentID."' AND a.status='P' AND a.publish_start_date < NOW()";
				}
				if(!$this->memcached_library->get($query) && $this->memcached_library->get($query) == ''){
					$data['content'] = $this->live_db->query($query)->result_array();
					$this->memcached_library->add($query,$data['content']);
				}else{
					$data['content']  = $this->memcached_library->get($query);
				}
				$data['sectionDetails'] = $sectionDetails;
				$data['contentType'] = $contentType;
				$data['baseUrl'] = base_url();
				$this->load->view('admin/readwhere_view',$data);
				
			}else{
				show_404();
			}
		}else{
			show_404();
		}
	}
}
?> 