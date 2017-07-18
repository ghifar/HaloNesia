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
		if($cek == '2'){
			$id = $this->session->userdata('id');
			$admin = $this->M_admin->get(array('id_admin'=>$id));
			$data['admin'] = $admin;
			$this->load->view('header');
			$this->load->view('region/home_view',$data);
			$this->load->view('footer');
		}
		else{
			header("location: ".base_url().'login');
		}
	}

	public function updateProfile(){
		// $id = $this->input->post('id');
		$id = $this->session->userdata('id');
    	$data = array(
			'admin_email' => $this->input->post('email'),
		);

		
		$admin = $this->M_admin->get(array('admin_email'=>$data['admin_email']));

    	if(($admin->num_rows()>0 && $admin->row()->id_admin != $id))
        	echo "Your email is wrong or already taken";
	    else{
			$cek = $this->M_admin->update(array('id_admin'=>$id),$data);
			echo "berhasil";
		}
		
		
	}


	public function updateNama(){
		// $id = $this->input->post('id');
		$username = strtolower(trim($this->input->post('nama')));
		$id = $this->session->userdata('id');
    	$data = array(
			'admin_name' => $this->input->post('nama')

		);

    // $admin = $this->M_admin->get(array('admin_email'=>$data['admin_email']));


    	// if((!preg_match('/^\w{6,}$/', $username) ||is_numeric($username[0])))
     //    	echo "Your name is contain disallowed charachter";
	    // else{
			$cek = $this->M_admin->update(array('id_admin'=>$id),$data);
			echo "berhasil";
		// }
		
	}

	public function update2(){
		// $id = $this->input->post('id');
		$username = strtolower(trim($this->input->post('username')));
		$id = $this->session->userdata('id');
    	$data = array(
			'admin_login' => $username,
			'admin_password' => md5($username),

		);

    $admin = $this->M_admin->get(array('admin_email'=>$data['admin_email']));



    	if(($admin->num_rows()>0 && $admin->row()->id_admin != $id))
        	echo "Your email is wrong or already taken";
	    else{
			$cek = $this->M_admin->update(array('id_admin'=>$id),$data);
			echo "berhasil";
		}
		
	
		
		
	}
	
}
