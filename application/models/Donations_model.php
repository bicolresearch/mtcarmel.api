<?php

/*
    Filename    : Donations_model.php
    Location    : application/models/Donations_model.php
    Purpose     : Donations model
    Created     : 06/27/2019 18:30:18 by Spiderman
    Updated     : 08/27/2019 16:30:41 by Spiderman
    Changes     : 
*/

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
                't1.amount,' .
                't2.name as donation_type,' .
                't4.first_name,' .
                't4.last_name,' .
                't6.full_path as media_path,' .
                't1.dt_created,' .
                't1.dt_updated,' .
                'CONCAT(t4.first_name, " ", t4.last_name) AS created_by,' .
                'CONCAT(t5.first_name, " ", t5.last_name) AS updated_by')
            ->from('donations AS t1')
            ->join('donation_type AS t2', 't2.id = t1.donation_type_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')   
            ->join('user_info AS t4', 't4.user_id = t1.created_by', 'left')
            ->join('user_info AS t5', 't5.user_id = t1.updated_by', 'left')
            ->join('media AS t6', 't6.id = t4.media_id', 'left')
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.branch_id' => 1
                ]
            )
            ->order_by('t1.id', 'DESC')
            ->limit(30);
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _get_by_id($id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.branch_id,' .
                't1.amount,' .
                't2.name as donation_type,' .
                't4.first_name,' .
                't4.last_name,' .
                't6.full_path as media_path,' .
                't1.dt_created,' .
                't1.dt_updated,' .
                'CONCAT(t4.first_name, " ", t4.last_name) AS created_by,' .
                'CONCAT(t5.first_name, " ", t5.last_name) AS updated_by')
            ->from('donations AS t1')
            ->join('donation_type AS t2', 't2.id = t1.donation_type_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')   
            ->join('user_info AS t4', 't4.user_id = t1.created_by', 'left')
            ->join('user_info AS t5', 't5.user_id = t1.updated_by', 'left')
            ->join('media AS t6', 't6.id = t4.media_id', 'left')
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.branch_id' => 1,
                    't1.id' => $id
                ]
            )
            ->order_by('t1.id', 'DESC')
            ->limit(30);
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _get_total_donations()
    {
        $this->db
            ->select('SUM(amount) AS amount')
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