<?php

/*
    Filename    : Priests_model.php
    Location    : application/models/Priests_model.php
    Purpose     : Priests model
    Created     : 06/27/2019 23:37:57 by Scarlet Witch
    Updated     : 09/04/2019 03:52:51 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Priests_model extends CI_Model
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
                't1.type_id,' .
                't1.media_id,' .
                't1.name,' .
                't1.position,' .
                't1.congregation,' .
                't1.sequence,' .        
                't1.dt_created,' .
                't1.dt_updated,' .
                't2.full_path AS media_path,' .   
                't4.name AS type_name,' .                   
                'CONCAT(t5.first_name, " ", t5.last_name) AS created_by,' .
                'CONCAT(t6.first_name, " ", t6.last_name) AS updated_by')
            ->from('ministers AS t1') 
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')
            ->join('global_reference_value AS t4', 't4.id = t1.type_id', 'left')
            ->join('user_info AS t5', 't5.user_id = t1.created_by', 'left')
            ->join('user_info AS t6', 't6.user_id = t1.updated_by', 'left')
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
                't1.type_id,' .
                't1.media_id,' .
                't1.name,' .
                't1.position,' .
                't1.congregation,' .
                't1.sequence,' .      
                't1.dt_created,' .
                't1.dt_updated,' .
                't2.full_path AS media_path,' .   
                't4.name AS type_name,' .                   
                'CONCAT(t5.first_name, " ", t5.last_name) AS created_by,' .
                'CONCAT(t6.first_name, " ", t6.last_name) AS updated_by')
            ->from('ministers AS t1') 
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')
            ->join('global_reference_value AS t4', 't4.id = t1.type_id', 'left')
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

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('ministers', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('ministers', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('ministers', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('ministers');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}