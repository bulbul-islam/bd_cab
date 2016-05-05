<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: user
 * Date: 2/11/2016
 * Time: 10:59 AM
 */
class Users extends MX_Controller

{
    public function __construct()
    {
        parent::__construct();
		$this->load->model('Dynamic_Model','dm');
		$this->load->helper('image_helper');
    }
    
    public function index()
    {
        $data = array();
        $data['main_content'] = $this->load->view('dashboard',$data,true);
        $this->load->view('admin_master',$data);    
    	
    }
    public function show_company(){
		$data=array();
		$data['view']=$this->dm->get('company');
		/*
		echo '<pre>';
		print_r($data['view']);
		echo '</pre>';
		*/
		$data['main_content']=$this->load->view('users/company_table',$data,true);
		$this->load->view('users/admin_master',$data);
	}
	public function add_company(){
		$data=array();
		$data['main_content']=$this->load->view('users/add_company',$data,true);
		$this->load->view('users/admin_master',$data);
	}
	public function save_company(){
		$data=array();
		$data['address']=$this->input->post('companyAddress',true);
		if (!empty($_FILES['cImage']['name'])) {
            $data['logo'] = image_save('cImage');
        }
		$this->dm->insert('company',$data);
		redirect('users/show_company');
	}

	
	public function shaon()
	{
		$this is demo ;

	public function update_company(){
		

	}

    
}







