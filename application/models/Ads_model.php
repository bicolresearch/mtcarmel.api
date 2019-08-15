<?php

/*
    Filename    : Ads_model.php
    Location    : application/models/Ads_model.php
    Purpose     : Ads model
    Created     : 06/27/2019 15:35:23 by Scarlet Witch
    Updated     : 08/14/2019 18:19:49 by Spiderman
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
                't1.type_id,' .
                't1.name,' .
                't1.description,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on,' .
                'CONCAT(t5.first_name, " ", t5.last_name) AS author,' .
                't2.full_path AS media_path')
            ->from('ads AS t1')
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')
            ->join('ad_type AS t4', 't4.id = t1.type_id', 'left')
            ->join('user_info AS t5', 't5.user_id = t1.created_by', 'left')
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.branch_id' => 1
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
                't1.type_id,' .
                't1.name,' .
                't1.description,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on,' .
                'CONCAT(t5.first_name, " ", t5.last_name) AS author,' .
                't2.full_path AS media_path')
            ->from('ads AS t1')
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')
            ->join('ad_type AS t4', 't4.id = t1.type_id', 'left')
            ->join('user_info AS t5', 't5.user_id = t1.created_by', 'left')
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