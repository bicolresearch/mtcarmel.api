<?php

/*
    Filename    : History_model.php
    Location    : application/models/History_model.php
    Purpose     : History model
    Created     : 06/27/2019 20:44:50 by Spiderman
    Updated     : 10/24/2019 20:45:16 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class History_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_by_branch_id($branch_id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.titular,' .
                't1.diocese,' .
                't1.date_of_establishment,' .
                't1.feast_day,' .
                't1.content,' .                
                't1.dt_created,' .
                't1.dt_updated,' .
                'CONCAT(t2.first_name, " ", t2.last_name) AS created_by,' .
                'CONCAT(t3.first_name, " ", t3.last_name) AS updated_by')
            ->from('history AS t1')         
            ->join('user_info AS t2', 't2.user_id = t1.created_by', 'left')
            ->join('user_info AS t3', 't3.user_id = t1.updated_by', 'left')
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.branch_id' => $branch_id
                ]
            );
        
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('history', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}