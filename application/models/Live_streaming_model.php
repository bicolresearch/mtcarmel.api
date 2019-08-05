<?php

/*
    Filename    : Live_streaming_model.php
    Location    : application/models/Live_streaming_model.php
    Purpose     : Live streaming model
    Created     : 07/19/2019 22:12:58 by Spiderman
    Updated     : 08/05/2019 19:41:02 by Scarlet Witch
    Changes     : added order_by to _get_all
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Live_streaming_model extends CI_Model
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
                't1.video_url,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on')
            ->from('live_streaming AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
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
                't1.video_url,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on')
            ->from('live_streaming AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
            ->where('t1.is_deleted', 0)
            ->where('t1.id', $id);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('live_streaming', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('live_streaming', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('live_streaming', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('live_streaming');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}