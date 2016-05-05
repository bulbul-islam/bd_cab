<?php

/**
 * Created by PhpStorm.
 * User: user
 * Date: 2/24/2016
 * Time: 2:16 PM
 */
include(APPPATH.'libraries/Dynamic_crud.php');
class Dynamic_Model extends Dynamic_crud
{

    public function update($table,$data,$condition){
        $this->db->update($table, $data,$condition);
    }

    public function delete($table,$condition)
    {
        $this->db->delete($table, $condition);
    }


    /*public function select($table,$data)
    {
        $query = $this->db->get_where($table, array('email' => $email, 'password' => $password));
        $result=$query->row();
        return $result;
    }

    public function getData()
    {

    }*/
}