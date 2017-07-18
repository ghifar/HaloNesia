<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Home extends CI_Controller {
	public function __construct()
    {
        parent::__construct();
        $this->load->model(array('M_admin'));
    }
	public function index()
	{
		$cek = $this->session->userdata('role');
		if($cek == '3'){
			$id = $this->session->userdata('id');
			$admin = $this->M_admin->get(array('id_admin'=>$id));
			$data['admin'] = $admin;
			$this->load->view('header');
			$this->load->view('place/home_view',$data);
			$this->load->view('footer');
		}
		else{
			header("location: ".base_url().'login');
		}
	}
	
}
