<?php

/*
    Filename    : Contacts_model.php
    Location    : application/models/Contacts_model.php
    Purpose     : Contacts model
    Created     : 06/27/2019 16:12:13 by Spiderman
    Updated     : 09/06/2019 22:51:13 by Spiderman
    Changes     : 
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

    public function _get_all($branch_id)
    {
        $this->datatables
            ->select(           
                't1.id,' .
                't1.name,' . 
                't1.dt_created,' .
                't1.dt_updated,' .
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('contacts AS t1')
            ->join('user_info AS t2', 't2.user_id = t1.created_by', 'left')
            ->join('user_info AS t3', 't3.user_id = t1.updated_by', 'left')
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
                't1.address1,' .
                't1.address2,' .
                't1.city AS city_code,' .
                't1.province AS province_code,' .
                't1.country AS country_code,' .
                't1.landline,' .
                't1.mobile,' .
                't1.email,' .
                't1.dt_created,' .
                't1.dt_updated,' .
                't2.name AS city_name,' .
                't3.name AS province_name,' .
                't4.name AS country_name,' .
                'CONCAT(t5.first_name, " ", t5.last_name) AS created_by,' .
                'CONCAT(t6.first_name, " ", t6.last_name) AS updated_by')
            ->from('contacts AS t1')
            ->join('city AS t2', 't2.city_code = t1.city', 'left')
            ->join('province AS t3', 't3.province_code = t1.province', 'left')
            ->join('country AS t4', 't4.country_code = t1.country', 'left')    
            ->join('user_info AS t5', 't5.user_id = t1.created_by', 'left')
            ->join('user_info AS t6', 't6.user_id = t1.updated_by', 'left')
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