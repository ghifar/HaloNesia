<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PlaceAdmin extends CI_Controller {
	public function __construct()
    {
        parent::__construct();
     
        $this->load->model(array('M_admin','M_region'));
    }
		public function index()
		{
			$cek = $this->session->userdata('role');
			if($cek == '2'){
				$data['region'] = $this->M_region->get(null);
				$this->load->view('header');
				$this->load->view('region/placeadmin_view',$data);
				$this->load->view('footer');
			}
			else{
				header("location: ".base_url().'login');
			}
		}
		
    
}
