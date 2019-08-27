<?php

/*
    Filename    : Confraternity_model.php
    Location    : application/models/Confraternity_model.php
    Purpose     : Confraternity model
    Created     : 07/22/2019 15:50:41 by Scarlet Witch
    Updated     : 08/28/2019 00:55:38 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Confraternity_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all()
    {
        $this->datatables
            ->select(
                't1.id,' .
                't1.name,' .
                't1.address_1,' .
                't1.address_2,' .
                't1.barangay,' .
                't1.city,' .
                't1.province,' .
                't1.country,' .
                't1.dt_birth,' .
                't1.landline,' .
                't1.mobile,' .
                't1.email,' .
                't1.dt_created' .
                't1.dt_updated,' .        
                't3.name AS status,' .
                'CONCAT(t4.first_name, " ", t4.last_name) AS created_by,' .
                'CONCAT(t5.first_name, " ", t5.last_name) AS updated_by')
            ->from('service_transactions AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')                                            
            ->join('global_reference_value AS t3', 't3.id = t1.status', 'left')          
            ->join('user_info AS t4', 't4.user_id = t1.created_by', 'left')
            ->join('user_info AS t5', 't5.user_id = t1.updated_by', 'left')                                   
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.branch_id' => 1,
                    't1.module_id' => 4,
                    't1.sub_module_id' => 1
                ]
            )
            ->order_by('t1.id', 'DESC');   
        
        return json_decode($this->datatables->generate());
    }

    public function _get_by_id($id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.name,' .
                't1.address_1,' .
                't1.address_2,' .
                't1.barangay,' .
                't1.city,' .
                't1.province,' .
                't1.country,' .
                't1.dt_birth,' .
                't1.landline,' .
                't1.mobile,' .
                't1.email,' .
                't1.dt_created' .
                't1.dt_updated,' .        
                't3.name AS status,' .
                'CONCAT(t4.first_name, " ", t4.last_name) AS created_by,' .
                'CONCAT(t5.first_name, " ", t5.last_name) AS updated_by')
            ->from('service_transactions AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')                                            
            ->join('global_reference_value AS t3', 't3.id = t1.status', 'left')          
            ->join('user_info AS t4', 't4.user_id = t1.created_by', 'left')
            ->join('user_info AS t5', 't5.user_id = t1.updated_by', 'left')                             
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.branch_id' => 1,
                    't1.module_id' => 4,
                    't1.sub_module_id' => 1,
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