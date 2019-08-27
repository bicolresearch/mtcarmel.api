<?php

/*
    Filename    : Donation_type_model.php
    Location    : application/models/Donation_type_model.php
    Purpose     : Donation Type model
    Created     : 2019-07-01 15:57:35 by Scarlet Witch
    Updated     : 08/27/2019 19:38:48 by Scarlet Witch
    Changes     : changed table donation_type to global_reference_value, removed branch_id
*/


if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Donation_type_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all()
    {
        $this->db
            ->select(
                't1.id,' .
                't1.name,' .             
                't1.description,' .
                't3.name as schedule, '  .
                't4.full_path as cover_photo')  
            ->from('global_reference_value AS t1')
            ->join('global_reference_value AS t3', 't3.id = t1.donation_schedule_type_id', 'left') 
            ->join('media AS t4', 't4.id = t1.media_id', 'left')               
            ->where_in('t3.name', array('Always', date('F')))   
            ->where('t1.is_deleted', 0);
            
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _get_by_id($id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.name,' .             
                't1.description,' .
                't3.name as schedule, '  .
                't4.full_path as cover_photo')  
            ->from('global_reference_value AS t1')
            ->join('global_reference_value AS t3', 't3.id = t1.donation_schedule_type_id', 'left') 
            ->join('media AS t4', 't4.id = t1.media_id', 'left')               
            ->where_in('t3.name', array('Always', date('F')))                  
            ->where('t1.is_deleted', 0)            
            ->where('t1.id', $id);
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('global_reference_value', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('global_reference_value', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('global_reference_value', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('global_reference_value');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}