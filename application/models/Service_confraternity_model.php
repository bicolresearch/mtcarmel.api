<?php

/*
    Filename    : Service_confraternity_model.php
    Location    : application/models/Service_confraternity_model.php
    Purpose     : Service confraternity model
    Created     : 07/25/2019 18:42:23 by Scarlet Witch
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Service_confraternity_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all()
    {
        $this->db
        ->select(           
            't1.attribute,' .
            't1.text_field_type,' .
            't1.value,' .                
            't1.hint,' .    
            't1.label_text,' .
            't1.validator_is_required,' .
            't1.validator_is_numeric,' .
            't1.validator_min_value,' .
            't1.validator_max_value,' .
            't1.error_text,' .            
            't1.selections')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.is_deleted', 0);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _get_by_id($id)
    {
        $this->db 
        ->select(           
            't1.attribute,' .
            't1.text_field_type,' .
            't1.value,' .                
            't1.hint,' .    
            't1.label_text,' .
            't1.validator_is_required,' .
            't1.validator_is_numeric,' .
            't1.validator_min_value,' .
            't1.validator_max_value,' .
            't1.error_text,' .            
            't1.selections')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.is_deleted', 0)       
        ->where('t1.id', $id);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }


}