<?php

/*
    Filename    : History_details_model.php
    Location    : application/models/History_details_model.php
    Purpose     : History_details model
    Created     : 07/24/2019 15:10:22 by Scarlet Witch
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class History_details_model extends CI_Model
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
            't1.titular,' .
            't1.diocese,' .
            't1.date_of_establishment,' .
            't1.feast_day,' .
            't1.content,' .                
            't1.dt_created as posted_on,' .
            't1.dt_updated as updated_on,' .
            't4.username as author,')
        ->from('history AS t1')
        ->join('branch AS t3', 't3.id = t1.branch_id', 'left')            
        ->join('users AS t4', 't4.id = t1.created_by', 'left')
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
            't1.titular,' .
            't1.diocese,' .
            't1.date_of_establishment,' .
            't1.feast_day,' .
            't1.content,' .                
            't1.dt_created as posted_on,' .
            't1.dt_updated as updated_on,' .
            't4.username as author,')
        ->from('history AS t1')
        ->join('branch AS t3', 't3.id = t1.branch_id', 'left')            
        ->join('users AS t4', 't4.id = t1.created_by', 'left')
        ->where('t1.is_deleted', 0)      
        ->where('t1.id', $id);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }


}