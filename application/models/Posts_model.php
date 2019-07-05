<?php

/*
    Filename    : Posts_model.php
    Location    : application/models/Posts_model.php
    Purpose     : Posts model
    Created     : 6/27/2019 by Scarlet Witch
    Updated     : 07/04/2019 15:35:23 by Spiderman
    Changes     : Implement datatables 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Posts_model extends CI_Model
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
                't1.title,' .
                't1.content,' .
                't1.dt_created as posted_on,' .
                't1.dt_updated as updated_on,' .
                't4.username as author,' .
                't2.full_path as cover_photo')
            ->from('posts AS t1')
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
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
                't1.title,' .
                't1.content,' .
                't1.dt_created as posted_on,' .
                't1.dt_updated as updated_on,' .
                't4.username as author,' .
                't2.full_path as cover_photo')
            ->from('posts AS t1')
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
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

        $this->db->insert('posts', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('posts', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('posts', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('posts');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}

