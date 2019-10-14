<?php

/*
    Filename    : Locations_model.php
    Location    : application/models/Locations_model.php
    Purpose     : Locations model
    Created     : 6/27/2019 by Scarlet Witch
    Updated     : 10/10/2019 14:05:34 by Scarlet Witch
    Changes     : Added branch_id to _get_all
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Locations_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all($branch_id)
    {
        $this->db
        ->select(           
            't1.id,' .
            't1.branch_id,' .
            't1.lat_center,' .
            't1.lng_center,')
        ->from('locations AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->where(                
            [
                't1.is_deleted' => 0,
                't1.branch_id' => $branch_id
            ]
        );

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _get_by_id($id)
    {
        $this->db 
        ->select(           
            't1.id,' .
            't1.branch_id,' .
            't1.lat_center,' .
            't1.lng_center,')
        ->from('locations AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->where('t1.is_deleted', 0)        
        ->where('t1.id', $id);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('locations', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('locations', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('locations', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->dbu
            ->where('id', $id)
            ->delete('locations');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}