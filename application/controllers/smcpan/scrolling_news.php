<?php
Class scrolling_news extends CI_Controller{
	
	public function __construct(){
		parent::__construct();
	}
	
	public function index(){
		$this->load->helper('url');
		$this->load->model('admin/scrolling_data');
		$data['content']=$this->scrolling_data->fetch_scrolling_data();
		$this->load->view('admin/common/header');
		$this->load->view('admin/scrolling',$data);
		$this->load->view('admin/common/footer');
	
	}
	
	public function save_news(){
		$this->load->model('admin/scrolling_data');
		$news=$this->input->post('news');
		echo $this->scrolling_data->save_scrolling_data($news);
	}
	
	public function save_edit_news(){
		$this->load->model('admin/scrolling_data');
		$news=$this->input->post('news');
		$sid=$this->input->post('sid');
		echo $this->scrolling_data->save_edit_scrolling_data($news,$sid);
	
	}
	
	public function delete_news(){
		$this->load->model('admin/scrolling_data');
		$sid=$this->input->post('sid');
		echo $this->scrolling_data->delete_data($sid);
	}
	
	public function render_news(){
		$this->load->model('admin/scrolling_data');
		$rendered=$this->scrolling_data->fetch_scrolling_data();
		$Template='<ul>';
		foreach($rendered as $data){
			$date=explode(' ',$data->created_on);
			$date=explode(':',$date[1]);
			$date=$date[0].':'.$date[1];
			$Template .='<li><span class="date-color">'.$date.' :</span> <span class="content-color">'.$data->content.'</span></li>';
		}
		$Template .='</ul>';
		echo $Template;
	
	}


}
?>