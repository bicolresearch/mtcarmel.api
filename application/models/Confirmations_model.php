<?php

/*
    Filename    : Confirmations_model.php
    Location    : application/models/Confirmations_model.php
    Purpose     : Confirmations model
    Created     : 08/06/2019 20:12:05 by Scarlet Witch
    Updated     : 09/27/2019 15:13:19 by Scarlet Witch
    Changes     : added function get_all_priest, get_all_user,
                  added branch_id 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Confirmations_model extends CI_Model
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
                't1.dt_birth,' .
                't1.address_1,' .
                't1.address_2,' .
                't1.barangay,' .
                't1.city,' .
                't1.province,' .
                't1.country,' .
                't1.dt_baptism,' .
                't1.church_of_baptism,' .
                't1.name_father,' .
                't1.name_mother,' .
                't1.name_contact_person,' .
                't1.landline_contact_person,' .
                't1.mobile_contact_person,' .
                't1.remarks,' .
                't1.sponsor,' .
                't1.requirements,' .
                't4.name AS status,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on,' .                
                't3.username AS author')
            ->from('service_transactions AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')              
            ->join('users AS t3', 't3.id = t1.created_by', 'left')                                    
            ->join('global_reference_value AS t4', 't4.id = t1.status', 'left') 
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.module_id' => 8,
                    't1.sub_module_id' => 11,
                    't1.branch_id' => $branch_id
                ]
            )  
            ->order_by('t1.status', 'ASC')                    
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
                't1.address_1,' .
                't1.address_2,' .
                't1.barangay,' .
                't1.city,' .
                't1.province,' .
                't1.country,' .
                't1.dt_baptism,' .
                't1.church_of_baptism,' .
                't1.name_father,' .
                't1.name_mother,' .
                't1.name_contact_person,' .
                't1.landline_contact_person,' .
                't1.mobile_contact_person,' .
                't1.remarks,' .
                't1.sponsor,' .
                't1.requirements,' .
                't4.name AS status,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on,' .                
                't3.username AS author')
            ->from('service_transactions AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')              
            ->join('users AS t3', 't3.id = t1.created_by', 'left')                                    
            ->join('global_reference_value AS t4', 't4.id = t1.status', 'left')  
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.module_id' => 8,
                    't1.sub_module_id' => 11,
                    't1.branch_id' => $branch_id,
                    't1.id' => $id
                ]
            );

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _get_all_user($user_id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.name,' .
                't1.dt_birth,' .
                't1.address_1,' .
                't1.address_2,' .
                't1.barangay,' .
                't1.city,' .
                't1.province,' .
                't1.country,' .
                't1.dt_baptism,' .
                't1.church_of_baptism,' .
                't1.name_father,' .
                't1.name_mother,' .
                't1.name_contact_person,' .
                't1.landline_contact_person,' .
                't1.mobile_contact_person,' .
                't1.remarks,' .
                't1.sponsor,' .
                't1.requirements,' .
                't4.name AS status,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on,' .                
                't3.username AS author')
            ->from('service_transactions AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')              
            ->join('users AS t3', 't3.id = t1.created_by', 'left')                                    
            ->join('global_reference_value AS t4', 't4.id = t1.status', 'left')  
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.module_id' => 8,
                    't1.sub_module_id' => 11,
                    't1.created_by' => $user_id
                ]
            )
            ->order_by('t1.id', 'DESC');   

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