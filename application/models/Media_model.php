<?php

/*
    Filename    : Media_model.php
    Location    : application/models/Media_model.php
    Purpose     : Media model
    Created     : 07/22/2019 15:50:41 by Spiderman
    Updated     : 08/14/2019 23:08:46 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Media_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all()
    {
        $this->datatables
            ->select('t1.*')
            ->from('media AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
            ->where('t1.is_deleted', 0)       
            ->order_by('t1.id', 'DESC');
        
        return json_decode($this->datatables->generate());
    }

    public function _get_by_id($id)
    {
        $this->db
            ->select('t1.*')
            ->from('media AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
            ->where('t1.is_deleted', 0)
            ->where('t1.id', $id);
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('media', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('media', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('media', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('media');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}