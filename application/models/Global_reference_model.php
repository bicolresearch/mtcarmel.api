<?php

/*
    Filename    : Global_reference_model.php
    Location    : application/models/Global_reference_model.php
    Purpose     : Global reference model
    Created     : 08/19/2019 14:10:53 by Spiderman
<<<<<<< HEAD
    Updated     : 09/16/2019 23:27:21 by Spiderman
    Changes     : 
=======
    Updated     : 09/11/2019 16:07:48 by Scarlet Witch
    Changes     : add filter for sched type - for send-help/donation type
>>>>>>> 161c11e3929c571edb4821a405d3dfddf8e4579d
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Global_reference_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all($group_id, $module_id, $sub_module_id)
    {
        $this->datatables
            ->select(
                't1.id,' .
                't1.name,' .
                't1.description,' .
                't1.dt_created,' .
                't1.dt_updated,' . 
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('global_reference_value AS t1')
            ->join('user_info AS t2', 't2.user_id = t1.created_by', 'left')
            ->join('user_info AS t3', 't3.user_id = t1.updated_by', 'left')  
            ->where(
                [
                    't1.is_deleted' => 0,
                    't1.group_id' => $group_id,
                    't1.module_id' => $module_id,
                    't1.sub_module_id' => $sub_module_id
                ]
            )
            ->order_by('t1.sequence', 'ASC');

        return json_decode($this->datatables->generate());
    }

<<<<<<< HEAD
    public function _get_by_id($id, $group_id, $module_id, $sub_module_id)
=======
    public function _get_all_donation_type($group_id)
    {
        $this->datatables
            ->select(
                't1.id,' .
                't1.name,' .
                't1.description,' .
                't1.dt_created,' .
                't1.dt_updated,' . 
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('global_reference_value AS t1')
            ->join('user_info AS t2', 't2.user_id = t1.created_by', 'left')
            ->join('user_info AS t3', 't3.user_id = t1.updated_by', 'left')
            ->where_in('t1.schedule_type', array('', 'Always', date('F')))   
            ->where(
                [
                    't1.is_deleted' => 0,
                    't1.group_id' => $group_id
                ]
            )
            ->order_by('t1.sequence', 'ASC');

        return json_decode($this->datatables->generate());
    }    

    public function _get_by_id($id, $group_id)
>>>>>>> 161c11e3929c571edb4821a405d3dfddf8e4579d
    {
        $this->db
            ->select(
                't1.id,' .
                't1.name,' .
                't1.description,' .
                't1.dt_created,' .
                't1.dt_updated,' . 
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('global_reference_value AS t1')
            ->join('user_info AS t2', 't2.user_id = t1.created_by', 'left')
            ->join('user_info AS t3', 't3.user_id = t1.updated_by', 'left')
            ->where(
                [
                    't1.is_deleted' => 0,
                    't1.id' => $id,
                    't1.group_id' => $group_id,
                    't1.module_id' => $module_id,
                    't1.sub_module_id' => $sub_module_id
                ]
            );
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('global_reference_value', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('global_reference_value', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('global_reference_value', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('global_reference_value');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}