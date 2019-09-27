<?php

/*
    Filename    : Branches_model.php
    Location    : application/models/Branches_model.php
    Purpose     : Branches reference model
    Created     : 09/13/2019 13:40:50 by Scarlet Witch
    Updated     : 09/27/2019 15:42:34 by Scarlet Witch
    Changes     : added branch features id and name
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Branches_model extends CI_Model
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
                't1.location_id,' .
                't5.name AS location_name,' .                 
                'CONCAT(t4.id , " - ", t6.id)  AS church_order_id,' .
                'CONCAT(t4.name , " - ", t6.name)  AS church_order_name,' .                                
                't4.id AS order_id,' .
                't4.name AS order_name,' .                              
                't6.id AS features_id,' .
                't6.name AS features_name,' .
                't1.dt_created,' .
                't1.dt_updated,' . 
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('branch AS t1')
            ->join('user_info AS t2', 't2.user_id = t1.created_by', 'left')
            ->join('user_info AS t3', 't3.user_id = t1.updated_by', 'left') 
            ->join('global_reference_value AS t4', 't4.id = t1.order_id', 'left')      
            ->join('branch_locations AS t5', 't5.id = t1.location_id', 'left')
            ->join('global_reference_value AS t6', 't6.id = t1.features_id', 'left')
            ->where(
                [
                    't1.is_deleted' => 0
                ]
            )
            ->order_by('t1.id', 'ASC');

        return json_decode($this->datatables->generate());
    }

    public function _get_by_id($id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.name,' .
                't1.description,' . 
                't1.location_id,' .
                't5.name AS location_name,' .                 
                'CONCAT(t4.id , " - ", t6.id)  AS church_order_id,' .
                'CONCAT(t4.name , " - ", t6.name)  AS church_order_name,' .                                
                't4.id AS order_id,' .
                't4.name AS order_name,' .                              
                't6.id AS features_id,' .
                't6.name AS features_name,' .
                't1.dt_created,' .
                't1.dt_updated,' . 
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('branch AS t1')
            ->join('user_info AS t2', 't2.user_id = t1.created_by', 'left')
            ->join('user_info AS t3', 't3.user_id = t1.updated_by', 'left') 
            ->join('global_reference_value AS t4', 't4.id = t1.order_id', 'left')      
            ->join('branch_locations AS t5', 't5.id = t1.location_id', 'left')
            ->join('global_reference_value AS t6', 't6.id = t1.features_id', 'left')
            ->where(
                [
                    't1.is_deleted' => 0,
                    't1.id' => $id
                ]
            );
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _get_by_location_id($location_id)
    {
        $this->datatables
            ->select(
                't1.id,' .
                't1.name,' .
                't1.description,' . 
                't1.location_id,' .
                't5.name AS location_name,' .                 
                'CONCAT(t4.id , " - ", t6.id)  AS church_order_id,' .
                'CONCAT(t4.name , " - ", t6.name)  AS church_order_name,' .                                
                't4.id AS order_id,' .
                't4.name AS order_name,' .                              
                't6.id AS features_id,' .
                't6.name AS features_name,' .
                't1.dt_created,' .
                't1.dt_updated,' . 
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('branch AS t1')
            ->join('user_info AS t2', 't2.user_id = t1.created_by', 'left')
            ->join('user_info AS t3', 't3.user_id = t1.updated_by', 'left') 
            ->join('global_reference_value AS t4', 't4.id = t1.order_id', 'left')      
            ->join('branch_locations AS t5', 't5.id = t1.location_id', 'left')
            ->join('global_reference_value AS t6', 't6.id = t1.features_id', 'left')
            ->where(
                [
                    't1.is_deleted' => 0,
                    't1.location_id' => $location_id
                ]
            )
            ->order_by('t1.id', 'ASC');

        return json_decode($this->datatables->generate());
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('branch', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('branch', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('branch', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('branch');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}