<?php

/*
    Filename    : Ads_model.php
    Location    : application/models/Ads_model.php
    Purpose     : Ads model
    Created     : 06/27/2019 15:35:23 by Scarlet Witch
    Updated     : 08/21/2019 20:50:14 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Ads_model extends CI_Model
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
                't1.media_id,' .
                't1.name,' .
                't1.description,' .
                't1.url,' .
                't1.expiration,' .
                't1.dt_created,' .
                't1.dt_updated,' .
                't2.full_path AS media_path,' .
                't4.id AS type_id,' .
                't4.name AS type_name,' .
                'CONCAT(t5.first_name, " ", t5.last_name) AS created_by,' .
                'CONCAT(t6.first_name, " ", t6.last_name) AS updated_by')
            ->from('ads AS t1')
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')
            ->join('ad_type AS t4', 't4.id = t1.type_id', 'left')
            ->join('user_info AS t5', 't5.user_id = t1.created_by', 'left')
            ->join('user_info AS t6', 't6.user_id = t1.updated_by', 'left')
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.branch_id' => 1,
                ]
            )
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
                't1.name,' .
                't1.description,' .
                't1.url,' .
                't1.expiration,' .
                't1.dt_created,' .
                't1.dt_updated,' .
                't2.full_path AS media_path,' .
                't4.id AS type_id,' .
                't4.name AS type_name,' .
                'CONCAT(t5.first_name, " ", t5.last_name) AS created_by,' .
                'CONCAT(t6.first_name, " ", t6.last_name) AS updated_by')
            ->from('ads AS t1')
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')
            ->join('ad_type AS t4', 't4.id = t1.type_id', 'left')
            ->join('user_info AS t5', 't5.user_id = t1.created_by', 'left')
            ->join('user_info AS t6', 't6.user_id = t1.updated_by', 'left')
            ->where(
                [
                    't1.is_deleted' => 0,
                    't1.branch_id' => 1,
                    't1.id' => $id
                ]
            );
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _get_by_type($type_id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.branch_id,' .
                't1.media_id,' .
                't1.name,' .
                't1.description,' .
                't1.url,' .
                't1.expiration,' .
                't1.dt_created,' .
                't1.dt_updated,' .
                't2.full_path AS media_path,' .
                't4.id AS type_id,' .
                't4.name AS type_name,' .
                'CONCAT(t5.first_name, " ", t5.last_name) AS created_by,' .
                'CONCAT(t6.first_name, " ", t6.last_name) AS updated_by')
            ->from('ads AS t1')
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')
            ->join('ad_type AS t4', 't4.id = t1.type_id', 'left')
            ->join('user_info AS t5', 't5.user_id = t1.created_by', 'left')
            ->join('user_info AS t6', 't6.user_id = t1.updated_by', 'left')
            ->where(
                [
                    't1.is_deleted' => 0,
                    't1.branch_id' => 1,
                    't4.id' => $type_id
                ]
            )
            ->order_by('t1.id', 'DESC');
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('ads', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('ads', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('ads', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('ads');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}