<?php

/*
    Filename    : November_mass_model.php
    Location    : application/models/November_mass_model.php
    Purpose     : November mass model
    Created     : 08/06/2019 18:17:29 by Scarlet Witch
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class November_mass_model extends CI_Model
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
                't1.name_contact_person,' .   
                't1.landline_contact_person,' .   
                't1.mobile_contact_person,' .   
                't1.address_1,' .   
                't1.address_2,' .   
                't1.barangay,' .   
                't1.city,' .   
                't1.province,' .   
                't1.country,' .    
                't4.name AS status,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on,' .                
                't3.username AS author')
            ->from('service_transactions AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')              
            ->join('users AS t3', 't3.id = t1.created_by', 'left')                                    
            ->join('status AS t4', 't4.id = t1.status', 'left')                   
            ->where('t1.module_id', 10)
            ->where('t1.sub_module_id', 16)
            ->where('t1.is_deleted', 0)                        
            ->order_by('t1.status', 'ASC')                    
            ->order_by('t1.id', 'DESC');             

        return json_decode($this->datatables->generate());
    }

    public function _get_by_id($id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.name,' . 
                't1.name_contact_person,' .   
                't1.landline_contact_person,' .   
                't1.mobile_contact_person,' .   
                't1.address_1,' .   
                't1.address_2,' .   
                't1.barangay,' .   
                't1.city,' .   
                't1.province,' .   
                't1.country,' .    
                't4.name AS status,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on,' .                
                't3.username AS author')
            ->from('service_transactions AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')              
            ->join('users AS t3', 't3.id = t1.created_by', 'left')                                    
            ->join('status AS t4', 't4.id = t1.status', 'left')                   
            ->where('t1.module_id', 10)
            ->where('t1.sub_module_id', 16)
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