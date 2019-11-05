<?php

/*
    Filename    : Certifications_model.php
    Location    : application/models/Certifications_model.php
    Purpose     : Certifications model
    Created     : 08/06/2019 19:15:59 by Scarlet Witch
    Updated     : 10/30/2019 11:13:18 by Scarlet Witch
    Changes     : updated get_all_user to _get_by_user_id and added _get_by_priest
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Certifications_model extends CI_Model
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
                    't1.is_deleted' => 0,
                    't1.module_id' => 5,
                    't1.sub_module_id' => 5,
                    't1.branch_id' => $branch_id
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
                    't1.is_deleted' => 0,
                    't1.module_id' => 5,
                    't1.sub_module_id' => 5,
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
                    't1.is_deleted' => 0,
                    't1.status_id' => 1,
                    't1.module_id' => 5,
                    't1.sub_module_id' => 5,
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
                't5.id AS certificate_id,' .
                't5.name AS certificate_name,' .
                't6.id AS purpose_certificate_id,' .
                't6.name AS purpose_certificate_name,' .
                't1.name_contact_person,' .
                't1.landline_contact_person,' .
                't1.mobile_contact_person,' .
                't1.dt_marriage,' .
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
            ->join('global_reference_value AS t5', 't5.id = t1.certificate_id', 'left')             
            ->join('global_reference_value AS t6', 't6.id = t1.purpose_certificate_id', 'left')                               
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.module_id' => 5,
                    't1.sub_module_id' => 5,
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