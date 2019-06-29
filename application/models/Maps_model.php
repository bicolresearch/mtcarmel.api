<?php

/*
    Filename    : Maps_model.php
    Location    : application/models/Maps_model.php
    Purpose     : Maps model
    Created     : 6/27/2019 by Scarlet Witch
    Updated     : 6/28/2019 by Spiderman
    Changes     : Changed commenting format
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Maps_model extends CI_Model
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
            't1.branch_id,' .
            't1.lat,' .
            't1.lng,')
        ->from('maps AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->where('t1.is_deleted', 0)
        ->order_by('t1.id', 'asc');

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _get_by_id($id)
    {
        $this->db 
        ->select(           
            't1.id,' .
            't1.branch_id,' .
            't1.lat,' .
            't1.lng,')
        ->from('maps AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->where('t1.is_deleted', 0)        
        ->where('t1.id', $id)
        ->order_by('t1.id', 'asc');

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('maps', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('maps', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('maps', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('maps');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}