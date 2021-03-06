<?php

/*
    Filename    : Schedules_model.php
    Location    : application/models/Schedules_model.php
    Purpose     : Schedules model
    Created     : 06/27/2019 22:18:36 by Spiderman
    Updated     : 09/06/2019 16:02:47 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Schedules_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all($branch_id)
    {
        $this->datatables
            ->select(
                't1.id,' .
                't1.name,' .                             
                't1.description,' .  
                't1.day,' .
                't2.name AS language,' .
                't1.time_from,' .
                't1.time_to,' .      
                't1.type_id,' . 
                't3.name AS type_name,' .            
                't1.dt_created,' .
                't1.dt_updated,' .               
                'CONCAT(t4.first_name, " ", t4.last_name) AS created_by,' .
                'CONCAT(t5.first_name, " ", t5.last_name) AS updated_by')
            ->from('schedules AS t1')
            ->join('global_reference_value AS t2', 't2.id = t1.language_id', 'left')          
            ->join('global_reference_value AS t3', 't3.id = t1.type_id', 'left')                         
            ->join('user_info AS t4', 't4.user_id = t1.created_by', 'left')
            ->join('user_info AS t5', 't5.user_id = t1.updated_by', 'left')
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.branch_id' => $branch_id
                ]
            )     
            ->order_by('t1.id', 'DESC');
        
        return json_decode($this->datatables->generate());
    }

    public function _get_by_id($branch_id, $id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.name,' .                             
                't1.description,' .  
                't1.day,' .
                't2.name AS language,' .
                't1.time_from,' .
                't1.time_to,' . 
                't1.type_id,' . 
                't3.name AS type_name,' .                 
                't1.dt_created,' .
                't1.dt_updated,' .               
                'CONCAT(t4.first_name, " ", t4.last_name) AS created_by,' .
                'CONCAT(t5.first_name, " ", t5.last_name) AS updated_by')
            ->from('schedules AS t1')
            ->join('global_reference_value AS t2', 't2.id = t1.language_id', 'left')          
            ->join('global_reference_value AS t3', 't3.id = t1.type_id', 'left')                         
            ->join('user_info AS t4', 't4.user_id = t1.created_by', 'left')
            ->join('user_info AS t5', 't5.user_id = t1.updated_by', 'left')
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.branch_id' => $branch_id,
                    't1.id' => $id
                ]
            );
            $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _get_by_type($branch_id, $type_id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.name,' .                             
                't1.description,' .  
                't1.day,' .
                't2.name AS language,' .
                't1.time_from,' .
                't1.time_to,' .       
                't1.type_id,' . 
                't3.name AS type_name,' .            
                't1.dt_created,' .
                't1.dt_updated,' .              
                'CONCAT(t4.first_name, " ", t4.last_name) AS created_by,' .
                'CONCAT(t5.first_name, " ", t5.last_name) AS updated_by')
            ->from('schedules AS t1')
            ->join('global_reference_value AS t2', 't2.id = t1.language_id', 'left')          
            ->join('global_reference_value AS t3', 't3.id = t1.type_id', 'left')                         
            ->join('user_info AS t4', 't4.user_id = t1.created_by', 'left')
            ->join('user_info AS t5', 't5.user_id = t1.updated_by', 'left')
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.branch_id' => $branch_id,
                    't1.type_id' => $type_id
                ]
            )
            ->order_by('t1.time_from', 'ASC');

            $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('schedules', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('schedules', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('schedules', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('schedules');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}