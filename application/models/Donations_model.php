<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Donations_model extends CI_Model
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
                't5.first_name,' .
                't5.last_name,' .
                't1.amount,' .
                't1.dt_created as posted_on,' .
                't2.name as donation_type,' .
                't3.full_path as profile_photo')
            ->from('donations AS t1')
            ->join('donation_type AS t2', 't2.id = t1.donation_type_id', 'left')
            ->join('media AS t3', 't3.id = t1.media_id', 'left')
            ->join('branch AS t4', 't4.id = t1.branch_id', 'left')
            ->join('user_info AS t5', 't5.user_id = t1.created_by', 'left')            
            ->order_by('t1.dt_created', 'desc')
            ->order_by('t1.id', 'desc')
            ->limit(30)
            ->where('t1.is_deleted', 0);
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _get_by_id($id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.branch_id,' .
                't5.first_name,' .
                't5.last_name,' .
                't1.amount,' .
                't1.dt_created as posted_on,' .
                't2.name as donation_type,' .
                't3.full_path as profile_photo')
            ->from('donations AS t1')
            ->join('donation_type AS t2', 't2.id = t1.donation_type_id', 'left')
            ->join('media AS t3', 't3.id = t1.media_id', 'left')
            ->join('branch AS t4', 't4.id = t1.branch_id', 'left')
            ->join('user_info AS t5', 't5.user_id = t1.created_by', 'left')
            ->where('t1.is_deleted', 0)
            ->where('t1.id', $id)
            ->order_by('t1.dt_created', 'desc')
            ->order_by('t1.id', 'desc')
            ->limit(30);
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _get_total_donations()
    {
        $this->db
            ->select('SUM(amount) AS donations')
            ->from('donations');

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('donations', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('donations', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('donations', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('donations');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}

/* 
 * end of file 
 * location: models/Donations_model.php
 */