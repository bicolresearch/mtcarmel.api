<?php

/*
    Filename    : Auth_model.php
    Location    : application/models/Auth_model.php
    Purpose     : Auth model
    Created     : 07/09/2019 10:01:25 by Spiderman
    Updated     : 07/15/2019 17:20:56 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Users_model extends CI_Model
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
                't1.role_id,' .         
                't4.name as role_name,' .       
                't1.username,' .
                't2.first_name,' .
                't2.middle_name,' .
                't2.last_name,' .
                't2.email,' .
                't2.address_1,' .
                't2.address_2,' .
                't2.city,' .
                't2.province,' .
                't2.country,' .
                't2.mobile,' .
                't2.landline,' .
                't5.full_path as avatar')
            ->from('users AS t1')
            ->join('user_info AS t2', 't2.user_id = t1.id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')             
            ->join('roles AS t4', 't4.id = t1.role_id', 'left')                       
            ->join('media AS t5', 't5.id = t2.media_id', 'left')     
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
                't1.role_id,' .         
                't4.name as role_name,' .       
                't1.username,' .
                't2.first_name,' .
                't2.middle_name,' .
                't2.last_name,' .
                't2.email,' .
                't2.address_1,' .
                't2.address_2,' .
                't2.city,' .
                't2.province,' .
                't2.country,' .
                't2.mobile,' .
                't2.landline,' .
                't5.full_path as avatar')   
            ->from('users AS t1')
            ->join('user_info AS t2', 't2.user_id = t1.id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')             
            ->join('roles AS t4', 't4.id = t1.role_id', 'left')                       
            ->join('media AS t5', 't5.id = t2.media_id', 'left')               
            ->where([  
                't1.id' => $id,
                't1.is_deleted' => 0
            ]);
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _get_by_username($username, $password)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.branch_id,' .
                't1.role_id,' .         
                't4.name as role_name,' .       
                't1.username,' .
                't2.first_name,' .
                't2.middle_name,' .
                't2.last_name,' .
                't2.email,' .
                't2.address_1,' .
                't2.address_2,' .
                't2.city,' .
                't2.province,' .
                't2.country,' .
                't2.mobile,' .
                't2.landline,' .
                't5.full_path as avatar')   
            ->from('users AS t1')
            ->join('user_info AS t2', 't2.user_id = t1.id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')             
            ->join('roles AS t4', 't4.id = t1.role_id', 'left')                       
            ->join('media AS t5', 't5.id = t2.media_id', 'left')           
            ->where([
                't1.username' => $username,
                't1.password' => $password,
                't1.is_deleted'=> 0
            ]);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($arr1, $arr2)
    {
        $this->db->trans_begin();

        // First query
        $this->db->insert('users', $arr1);

        // Merge arr2 array with the last inserted id
        $arr2 = array_merge(['user_id' => $this->db->insert_id()], $arr2);

        // Second query
        $this->db->insert('user_info', $arr2);

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