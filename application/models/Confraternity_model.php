<?php

/*
    Filename    : Confraternity_model.php
    Location    : application/models/Confraternity_model.php
    Purpose     : Confraternity model
    Created     : 07/22/2019 15:50:41 by Spiderman
    Updated     : 
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
                't1.dt_created as posted_on,' .
                't1.dt_updated as updated_on,' .                
                't3.username as author')
            ->from('service_transactions AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')              
            ->join('users AS t3', 't3.id = t1.created_by', 'left')                  
            ->where('t1.module_id', 4)
            ->where('t1.sub_module_id', 1)
            ->where('t1.is_deleted', 0);
            
        
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
                't1.dt_created as posted_on,' .
                't1.dt_updated as updated_on,' .                
                't3.username as author')
            ->from('service_transactions AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')              
            ->join('users AS t3', 't3.id = t1.created_by', 'left')                  
            ->where('t1.module_id', 4)
            ->where('t1.sub_module_id', 1)
            ->where('t1.is_deleted', 0)
            ->where('t1.id', $id);
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