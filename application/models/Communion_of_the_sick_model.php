<?php

/*
    Filename    : Communion_of_the_sick_model.php
    Location    : application/models/Communion_of_the_sick_model.php
    Purpose     : Communion of the sick model
    Created     : 08/06/2019 16:24:12 by Scarlet Witch
    Updated     : 10/30/2019 14:23:22 by Scarlet Witch
    Changes     : renamed form, added _get_by_user_id and _get_by_priest, added branch_id on _get_all
*/


if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Communion_of_the_sick_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    
    public function _get_all($branch_id)
    {
        $this->datatables
        ->select(
            't1.id,' .
            't1.name,' .
            't2.id AS status_id,' .
            't2.name AS status_name,' .
            't1.dt_created,' .
            't1.dt_updated,' .    
            'CONCAT(t3.first_name, " ", t3.last_name) AS created_by,' .
            'CONCAT(t4.first_name, " ", t4.last_name) AS updated_by')
        ->from('service_transactions AS t1')                                          
        ->join('global_reference_value AS t2', 't2.id = t1.status_id', 'left')      
        ->join('user_info AS t3', 't3.user_id = t1.created_by', 'left')
        ->join('user_info AS t4', 't4.user_id = t1.updated_by', 'left')                                   
        ->where(                
            [
                't1.module_id' => 7,
                't1.sub_module_id' => 10,
                't1.is_deleted' => 0,
                't1.branch_id' => $branch_id,
            ]
        )                            
        ->order_by('t1.status_id', 'ASC')                    
        ->order_by('t1.id', 'DESC');   
    
        return json_decode($this->datatables->generate());
    }

    public function _get_by_user_id($user_id)
    {
        $this->datatables
        ->select(
            't1.id,' .
            't1.name,' .
            't2.id AS status_id,' .
            't2.name AS status_name,' .
            't1.dt_created,' .
            't1.dt_updated,' .    
            'CONCAT(t3.first_name, " ", t3.last_name) AS created_by,' .
            'CONCAT(t4.first_name, " ", t4.last_name) AS updated_by')
        ->from('service_transactions AS t1')                                          
        ->join('global_reference_value AS t2', 't2.id = t1.status_id', 'left')      
        ->join('user_info AS t3', 't3.user_id = t1.created_by', 'left')
        ->join('user_info AS t4', 't4.user_id = t1.updated_by', 'left')                                   
        ->where(                
            [
                't1.module_id' => 7,
                't1.sub_module_id' => 10,
                't1.is_deleted' => 0,
                't1.created_by' => $user_id
            ]
        )                            
        ->order_by('t1.status_id', 'ASC')                    
        ->order_by('t1.id', 'DESC');  
    
        return json_decode($this->datatables->generate());
    }

    public function _get_by_priest($branch_id)
    {
        $this->datatables
        ->select(
            't1.id,' .
            't1.name,' .
            't2.id AS status_id,' .
            't2.name AS status_name,' .
            't1.dt_created,' .
            't1.dt_updated,' .    
            'CONCAT(t3.first_name, " ", t3.last_name) AS created_by,' .
            'CONCAT(t4.first_name, " ", t4.last_name) AS updated_by')
        ->from('service_transactions AS t1')                                          
        ->join('global_reference_value AS t2', 't2.id = t1.status_id', 'left')      
        ->join('user_info AS t3', 't3.user_id = t1.created_by', 'left')
        ->join('user_info AS t4', 't4.user_id = t1.updated_by', 'left')                                   
        ->where(                
            [
                't1.module_id' => 7,
                't1.sub_module_id' => 10,
                't1.is_deleted' => 0,
                't1.status_id' => 1,
                't1.branch_id' => $branch_id
            ]
        )                            
        ->order_by('t1.status_id', 'ASC')                    
        ->order_by('t1.id', 'DESC');  
    
        return json_decode($this->datatables->generate());
    }


    public function _get_by_id($branch_id, $id)
    {
        $this->db
        ->select(
            't1.id,' .
            't1.name,' .                
            't1.dt_birth,' .
            't1.name_spouse,' .
            't1.dt_birth_spouse,' .
            't1.address_1,' .
            't1.address_2,' .
            't1.city,' .
            't1.province,' .
            't1.country,' .
            't1.landline,' .
            't1.mobile,' .         
            't1.dt_marriage,' .     
            't1.dt_last_confession,' .     
            't1.time_preferred_visit,' .     
            't1.day_preferred_visit,' .                  
            't1.household,' .                  
            't1.name_contact_person,' .                  
            't1.landline_contact_person,' .                   
            't1.mobile_contact_person,' . 
            't2.id AS status_id,' .
            't2.name AS status_name,' .
            't1.dt_created,' .
            't1.dt_updated,' .    
            'CONCAT(t3.first_name, " ", t3.last_name) AS created_by,' .
            'CONCAT(t4.first_name, " ", t4.last_name) AS updated_by')
        ->from('service_transactions AS t1')                                          
        ->join('global_reference_value AS t2', 't2.id = t1.status_id', 'left')      
        ->join('user_info AS t3', 't3.user_id = t1.created_by', 'left')
        ->join('user_info AS t4', 't4.user_id = t1.updated_by', 'left')                                   
        ->where(                
            [
                't1.module_id' => 7,
                't1.sub_module_id' => 10,
                't1.is_deleted' => 0,
                't1.status_id' => 1,
                't1.branch_id' => $branch_id,
                't1.id' => $id
            ]
        );
        
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('service_transactions', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('service_transactions', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('service_transactions', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('service_transactions');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}