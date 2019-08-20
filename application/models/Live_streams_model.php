<?php

/*
    Filename    : Live_streams_model.php
    Location    : application/models/Live_streams_model.php
    Purpose     : Live streams model
    Created     : 07/19/2019 22:12:58 by Spiderman
    Updated     : 08/20/2019 19:20:35 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Live_streams_model extends CI_Model
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
                't1.description,' .
                't1.video_id,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('live_streams AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
            ->join('user_info AS t3', 't3.user_id = t1.updated_by', 'left')
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
                't1.title,' .
                't1.description,' .
                't1.video_id,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('live_streams AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
            ->join('user_info AS t3', 't3.user_id = t1.updated_by', 'left')
            ->where('t1.is_deleted', 0)
            ->where('t1.id', $id);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _get_by_branch_id($branch_id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.branch_id,' .
                't1.title,' .
                't1.description,' .
                't1.video_id,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('live_streams AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
            ->join('user_info AS t3', 't3.user_id = t1.updated_by', 'left')
            ->where('t1.is_deleted', 0)
            ->where('t1.branch_id', $branch_id);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('live_streams', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('live_streams', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('live_streams', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('live_streams');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}