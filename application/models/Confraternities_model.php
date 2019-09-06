<?php

/*
    Filename    : Confraternities_model.php
    Location    : application/models/Confraternities_model.php
    Purpose     : Confraternities model
    Created     : 07/22/2019 15:50:41 by Scarlet Witch
    Updated     : 08/30/2019 13:55:49 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Confraternities_model extends CI_Model
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
                't1.dt_created,' .
                't1.dt_updated,' .    
                't2.id AS status_id,' .
                't2.name AS status_name,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS created_by,' .
                'CONCAT(t4.first_name, " ", t4.last_name) AS updated_by')
            ->from('service_transactions AS t1')                                          
            ->join('global_reference_value AS t2', 't2.id = t1.status_id', 'left')      
            ->join('user_info AS t3', 't3.user_id = t1.created_by', 'left')
            ->join('user_info AS t4', 't4.user_id = t1.updated_by', 'left')                                   
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.branch_id' => 1,
                    't1.module_id' => 4,
                    't1.sub_module_id' => 1
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
                't1.name,' .
                't1.address_1,' .
                't1.address_2,' .
                't1.city AS city_code,' .
                't1.province AS province_code,' .
                't1.country AS country_code,' .
                't1.birthdate,' .
                't1.landline,' .
                't1.mobile,' .
                't1.email,' .
                't1.dt_created,' .
                't1.dt_updated,' .    
                't3.id AS status_id,' .
                't3.name AS status_name,' .
                't4.name AS city_name,' .
                't5.name AS province_name,' .
                't6.name AS country_name,' .
                'CONCAT(t7.first_name, " ", t7.last_name) AS created_by,' .
                'CONCAT(t8.first_name, " ", t8.last_name) AS updated_by')
            ->from('service_transactions AS t1')                                        
            ->join('global_reference_value AS t3', 't3.id = t1.status_id', 'left')      
            ->join('city AS t4', 't4.city_code = t1.city', 'left')
            ->join('province AS t5', 't5.province_code = t1.province', 'left')
            ->join('country AS t6', 't6.country_code = t1.country', 'left')    
            ->join('user_info AS t7', 't7.user_id = t1.created_by', 'left')
            ->join('user_info AS t8', 't8.user_id = t1.updated_by', 'left')                                            
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.branch_id' => 1,
                    't1.module_id' => 4,
                    't1.sub_module_id' => 1,
                    't1.id' => $id
                ]
            );

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('service_transactions', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('service_transactions', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('service_transactions', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('service_transactions');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}