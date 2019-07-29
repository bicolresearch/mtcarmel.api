<?php

/*
    Filename    : Sub_modules_model.php
    Location    : application/models/Sub_modules_model.php
    Purpose     : Sub_modules_model model
    Created     : 2019-07-26 10:44:51 by Scarlet Witch 
    Updated     : 07/26/2019 17:04:51 by Scarlet Witch
    Changes     : changed the value of service to module id
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Sub_modules_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all()
    {
        $this->db
            ->select(
                't4.id as service_id,' .
                't1.name,' .
                't1.description,' .
                't1.description,' .
                't1.acceptance_content,' .
                't1.thank_you_content,' .
                't2.full_path as cover_photo')
            ->from('sub_modules AS t1')
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')            
            ->join('modules AS t4', 't4.id = t1.module_id', 'left')
            ->where('t1.program_id', 3)
            ->where('t1.id', 1)
            ->where('t1.is_deleted', 0);
            
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _get_confra()
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
                't4.id as service_id,' .
                't1.name,' .
                't1.description,' .
                't1.description,' .
                't1.acceptance_content,' .
                't1.thank_you_content,' .
                't2.full_path as cover_photo')
            ->from('sub_modules AS t1')
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')            
            ->join('modules AS t4', 't4.id = t1.module_id', 'left')
            ->where('t1.program_id', 3)
            ->where('t1.id', $id);
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

}