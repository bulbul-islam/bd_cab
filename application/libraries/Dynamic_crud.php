<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * User: karim khan (kk)
 * Date: 2/16/2016
 * Time: 11:10 AM
 */
class Dynamic_crud extends CI_Model
{

    public function insert($table,$data){
        $this->db->insert($table,$data);
        return $this->db->insert_id();
    }


    public function get($table)
    {
        $query = $this->db->get($table);
        $result=$query->result();
        return $result;
    }

    public function get_where_row($table,$data)
    {
        $query = $this->db->get_where($table, $data);
        $result=$query->row();
        return $result;
    }


    public function get_where_result($table,$data)
    {
        $query = $this->db->get_where($table, $data);
        $result=$query->result();
        return $result;
    }


/*


    public function update($column,$condition,$table,$data)
    {
        $this->db->where($column,$condition);
        $this->db->update($table,$data);
    }
    // here u can update any data using only one condition.
    public function delete($column,$condition,$table)
    {
        $this->db->where($column,$condition);
        $this->db->delete($table);
    }
    public function get_data($data)
    {
        $this->db->select('*');
        if(!empty($data['column1']) && !empty($data['condition1']))
        {
            $this->db->where($data['column1'],$data['condition1']);
        }
        if(!empty($data['column2']) && !empty($data['condition2']))
        {
            $this->db->where($data['column2'],$data['condition2']);
        }
        if(!empty($data['column3']) && !empty($data['condition3']))
        {
            $this->db->where($data['column3'],$data['condition3']);
        }
        if(!empty($data['column1like']) && !empty($data['condition1like']))
        {
            $this->db->like($data['column1like'],$data['condition1like']);
        }
        if(!empty($data['column2like']) && !empty($data['condition2like']))
        {
            $this->db->like($data['column2like'],$data['condition2like']);
        }
        if(!empty($data['column3like']) && !empty($data['condition3like']))
        {
            $this->db->like($data['column3like'],$data['condition3like']);
        }
        if(!empty($data['order_column']))
        {
            if(isset($data['order_type']))
            {
                $this->db->order_by($data['order_column']);
            }else{

                $this->db->order_by($data['order_column'],'DESC');
            }
        }
        if(!empty($data['limit']) && empty($data['limit_start']))
        {
            $this->db->limit($data['limit']);
        }
        elseif(!empty($data['limit']) && !empty($data['limit_start']))
        {
            $this->db->limit($data['limit'],$data['limit_start']);
        }
        if(isset($data['query_result']) && $data['query_result']=='query')
        {
            $result=$this->db->get($data['table_name']);

        }
        else{
            if(isset($data['count']))
            {
                $this->db->from($data['table_name']);
                if($data['count']=='all'){
                    $result=$this->db->count_all();
                }
                else
                {
                    $result=$this->db->count_all_results();
                }
            }
            else{
                if(isset($data['per_page']) && isset($data['segment']))
                {
                    $query_result=$this->db->get($data['table_name'],$data['per_page'],$data['segment']);
                }
                else{
                    $query_result=$this->db->get($data['table_name']);
                }
                if(!empty($data['return_type']) && $data['return_type']="row")
                {
                    $result=$query_result->row();
                }else{
                    $result=$query_result->result();
                }
            }
        }
        return $result;
    }
    public function get_data($table_name,$column1=false,$condition1=false,$column2=false,$condition2=false,$column3=false,$condition3=false,$order_column=false,$limit=false,$limit_start=false,$return_type=false)
    {
        $this->db->select('*');
        if(!empty($column1) && !empty($condition1))
        {
            $this->db->where($column1,$condition1);
        }
        if(!empty($column2) && !empty($condition2))
        {
            $this->db->where($column2,$condition2);
        }
        if(!empty($column3) && !empty($condition3))
        {
            $this->db->where($column3,$condition3);
        }
        if(!empty($order_column))
        {
            $this->db->order_by($order_column,'DESC');
        }
        if(!empty($limit) && empty($limit_start))
        {
            $this->db->limit($limit);
        }
        elseif(!empty($limit) && !empty($limit_start))
        {
            $this->db->limit($limit,$limit_start);
        }
        $query_result=$this->db->get($table_name);
        if(!empty($return_type) && $return_type="row")
        {
            $result=$query_result->row();
        }else{
            $result=$query_result->result();
        }
        return $result;
    }*/



}