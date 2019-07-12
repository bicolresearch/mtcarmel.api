<?php

/*
    Filename    : Auth_model.php
    Location    : application/models/Auth_model.php
    Purpose     : Auth model
    Created     : 07/09/2019 10:01:25 by Spiderman
    Updated     : 2019-07-11 15:34:24 by Scarlet Witch 
    Changes     : added id 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Auth_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all()
    {
        $this->db
            ->select('*')
            ->from('users')
            ->where('is_deleted', 0);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _get_by_id($id)
    {
        $this->db
            ->select(
                'id,' . 
                'username,' . 
                'password,' . 
                'role_id')
            ->from('users')
            ->where([
                'id' => $id,
                'is_deleted'=> 0
            ]);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _get_by_username($username, $password)
    {
        $this->db
            ->select(
                'id,' . 
                'username,' . 
                'password,' . 
                'role_id')
            ->from('users')
            ->where([
                'username' => $username,
                'password' => $password,
                'is_deleted'=> 0
            ]);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('users', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('users', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('users', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('users');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}