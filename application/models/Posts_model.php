<?php

/*
    Filename    : Posts_model.php
    Location    : application/models/Posts_model.php
    Purpose     : Posts model
    Created     : 06/27/2019 15:35:23 by Spiderman
    Updated     : 08/14/2019 18:19:37 by Spiderman
    Changes     : 
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
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on,' .
                'CONCAT(t4.first_name, " ", t4.last_name) AS author,' .
                't2.full_path AS cover_photo')
            ->from('posts AS t1')
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')
            ->join('user_info AS t4', 't4.user_id = t1.created_by', 'left')
            ->where('t1.is_deleted', 0)
            ->order_by('t1.id', 'DESC');

        return json_decode($this->datatables->generate());
    }
    
    public function _get_by_id($id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.branch_id,' .
                't1.media_id,' .
                't1.title,' .
                't1.content,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on,' .
                'CONCAT(t4.first_name, " ", t4.last_name) AS author,' .
                't2.full_path AS cover_photo')
            ->from('posts AS t1')
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')
            ->join('user_info AS t4', 't4.user_id = t1.created_by', 'left')
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

