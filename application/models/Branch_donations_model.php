<?php

/*
    Filename    : Branch_donations_model.php
    Location    : application/models/Branch_donations_model.php
    Purpose     : Branch donations type model
    Created     : 09/25/2019 13:42:21 by Scarlet Witch
    Updated     : 09/25/2019 14:44:25 by Scarlet Witch
    Changes     : added description
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Branch_donations_model extends CI_Model
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
                't2.id AS donation_id,' .
                'CONCAT(t2.name, " ", t1.name)  AS donation_name,' .       
                't2.description AS donation_description,' .             
                't2.media_id,' .    
                't6.full_path AS media_path,' .
                't1.dt_created,' .
                't1.dt_updated,' .  
                'CONCAT(t3.first_name, " ", t3.last_name) AS created_by,' .
                'CONCAT(t4.first_name, " ", t4.last_name) AS updated_by')
            ->from('branch_donations AS t1')                                          
            ->join('global_reference_value AS t2', 't2.id = t1.donation_type_id', 'left')      
            ->join('user_info AS t3', 't3.user_id = t1.created_by', 'left')
            ->join('user_info AS t4', 't4.user_id = t1.updated_by', 'left')                           
            ->join('global_reference_value AS t5', 't5.id = t1.donation_schedule_type_id', 'left')                                  
            ->join('media AS t6', 't6.id = t2.media_id', 'left')    
            ->where_in('t5.name', array('', 'Always', date('F')))                            
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.branch_id' => $branch_id
                ]
            )
            ->order_by('t2.sequence', 'ASC');   
        
        return json_decode($this->datatables->generate());
    }

    public function _get_by_id($branch_id, $id)
    {
        $this->db
            ->select(
                't1.id,' .  
                't2.id AS donation_id,' .
                'CONCAT(t2.name, " ", t1.name)  AS donation_name,' .  
                't2.description AS donation_description,' .
                't2.media_id,' .    
                't6.full_path AS media_path,' .
                't1.dt_created,' .
                't1.dt_updated,' .  
                'CONCAT(t3.first_name, " ", t3.last_name) AS created_by,' .
                'CONCAT(t4.first_name, " ", t4.last_name) AS updated_by')
            ->from('branch_donations AS t1')                                          
            ->join('global_reference_value AS t2', 't2.id = t1.donation_type_id', 'left')      
            ->join('user_info AS t3', 't3.user_id = t1.created_by', 'left')
            ->join('user_info AS t4', 't4.user_id = t1.updated_by', 'left')                           
            ->join('global_reference_value AS t5', 't5.id = t1.donation_schedule_type_id', 'left')                                  
            ->join('media AS t6', 't6.id = t2.media_id', 'left')    
            ->where_in('t5.name', array('', 'Always', date('F')))                                                 
            ->where(                
                [
                    't1.is_deleted' => 0,
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

        $this->db->insert('branch_donations', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('branch_donations', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('branch_donations', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('branch_donations');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}