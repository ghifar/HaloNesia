<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Compose extends CI_Controller {
	public function __construct()
    {
        parent::__construct();
     
        //$this->load->model(array('M_region'));
    }
		public function index()
		{
			$cek = $this->session->userdata('role');
			if($cek == '2'){
				$this->load->view('header');
				$this->load->view('region/compose_view');
				$this->load->view('footer');
			}
			else{
				header("location: ".base_url().'login');
			}
		}
		
}
