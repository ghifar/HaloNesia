<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reviews extends CI_Controller {
	public function __construct()
    {
        parent::__construct();
     
        $this->load->model(array('M_category'));
    }
		public function index()
		{
			$cek = $this->session->userdata('role');
			if($cek == '3'){
				$this->load->view('header');
				$this->load->view('place/reviews_view');
				$this->load->view('footer');
			}
			else{
				header("location: ".base_url().'login');
			}
		}
		
}
