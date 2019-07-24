<?php

/*
    Filename    : Schedules_model.php
    Location    : application/models/Schedules_model.php
    Purpose     : Schedules model
    Created     : 6/27/2019 by Scarlet Witch
    Updated     : 07/23/2019 12:55:58 by Scarlet Witch
    Changes     : update the script for datatables
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Schedules_model extends CI_Model
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
                't1.branch_id,' .
                't1.name,' .                             
                't1.description,' .  
                't1.day,' .
                't2.name as language,' .
                't1.time_from,' .
                't1.time_to,' .                
                't1.dt_created as posted_on,' .
                't1.dt_updated as updated_on,' .                
                't4.username as author,')
            ->from('schedules AS t1')
            ->join('language AS t2', 't2.id = t1.language_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')                       
            ->join('users AS t4', 't4.id = t1.created_by', 'left')
            ->where('t1.is_deleted', 0);
        
        return json_decode($this->datatables->generate());
    }

    public function _get_by_id($id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.branch_id,' .
                't1.name,' .                             
                't1.description,' .  
                't1.day,' .
                't2.name as language,' .
                't1.time_from,' .
                't1.time_to,' .                
                't1.dt_created as posted_on,' .
                't1.dt_updated as updated_on,' .                
                't4.username as author,')
            ->from('schedules AS t1')
            ->join('language AS t2', 't2.id = t1.language_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')                       
            ->join('users AS t4', 't4.id = t1.created_by', 'left')
            ->where('t1.is_deleted', 0)
            ->where('t1.id', $id);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('schedules', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('schedules', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('schedules', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('schedules');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}