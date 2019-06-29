<?php

/*
    Filename    : Contacts_model.php
    Location    : application/models/Contacts_model.php
    Purpose     : Contacts model
    Created     : 6/27/2019 by Scarlet Witch
    Updated     : 6/28/2019 by Spiderman
    Changes     : Changed commenting format
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Contacts_model extends CI_Model
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
                't1.name,' .
                't1.address1,' .
                't1.address2,' .
                't1.city,' .
                't1.province,' .
                't1.country,' .
                't1.landline,' .
                't1.mobile,' .
                't1.email,' .
                't3.description as social_media')
            ->from('contacts AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
            ->join('social_media AS t3', 't3.id = t1.social_media_id', 'left')
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
                't1.name,' .
                't1.address1,' .
                't1.address2,' .
                't1.city,' .
                't1.province,' .
                't1.country,' .
                't1.landline,' .
                't1.mobile,' .
                't1.email,' .
                't3.description as social_media')
            ->from('contacts AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
            ->join('social_media AS t3', 't3.id = t1.social_media_id', 'left')
            ->where('t1.is_deleted', 0)
            ->where('t1.id', $id);
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('contacts', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('contacts', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('contacts', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('contacts');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}