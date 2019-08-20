<?php

/*
    Filename    : Ad_type_model.php
    Location    : application/models/Ad_type_model.php
    Purpose     : Ad type model
    Created     : 08/19/2019 14:10:53 by Spiderman
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Ad_type_model extends CI_Model
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
                't1.name,' .
                't1.description,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on')
            ->from('ad_type AS t1')
            ->join('user_info AS t2', 't2.user_id = t1.created_by', 'left')
            ->where('t1.is_deleted', 0)
            ->order_by('t1.id', 'DESC');
        
        return json_decode($this->datatables->generate());
    }

    public function _get_by_id($id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.name,' .
                't1.description,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on')
            ->from('ad_type AS t1')
            ->join('user_info AS t2', 't2.user_id = t1.created_by', 'left')
            ->where(
                [
                    't1.is_deleted' => 0,
                    't1.id' => $id
                ]
            );
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('ad_type', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('ad_type', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('ad_type', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('ad_type');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}