<?php

/*
    Filename    : Sub_modules_model.php
    Location    : application/models/Sub_modules_model.php
    Purpose     : Sub_modules_model model
    Created     : 2019-07-26 10:44:51 by Scarlet Witch 
    Updated     : 11/06/2019 17:58:55 by Scarlet Witch
    Changes     : added get_sub_modules_by_id and get_service_references used to get the service sub module references ie formfields
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

    public function _get_all($branch_id)
    {
        $this->datatables
            ->select(
                't5.id as module_id,' .
                't2.id,' .
                't2.name,' .
                't2.description,' .
                't2.acceptance_content,' .
                't2.thank_you_content,' .
                't2.create_url as url, ' .
                't3.full_path as cover_photo')
            ->from('sub_modules_info AS t1')
            ->join('sub_modules AS t2', 't2.id = t1.sub_module_id', 'left')
            ->join('media AS t3', 't3.id = t2.media_id', 'left')
            ->join('branch AS t4', 't4.id = t1.branch_id', 'left')            
            ->join('modules AS t5', 't5.id = t2.module_id', 'left')
            ->where(                
                [
                    't2.program_id' => 3,
                    't1.is_deleted' => 0,
                    't1.branch_id' => $branch_id
                ]
            )             
            ->order_by('t1.id', 'ASC');
            
        return json_decode($this->datatables->generate());        
    }

    public function _get_by_id($branch_id, $id)
    {
        $this->db
            ->select(
                't5.id as module_id,' .
                't2.id,' .
                't2.name,' .
                't2.description,' .
                't2.acceptance_content,' .
                't2.thank_you_content,' .
                't2.create_url as url, ' .
                't3.full_path as cover_photo')
            ->from('sub_modules_info AS t1')
            ->join('sub_modules AS t2', 't2.id = t1.sub_module_id', 'left')
            ->join('media AS t3', 't3.id = t2.media_id', 'left')
            ->join('branch AS t4', 't4.id = t1.branch_id', 'left')            
            ->join('modules AS t5', 't5.id = t2.module_id', 'left')
            ->where(                
                [
                    't2.program_id' => 3,
                    't1.is_deleted' => 0,
                    't1.branch_id' => $branch_id,
                    't1.sub_module_id' => $id
                ]
            );
            
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    //Services References
    public function _get_service_references($branch_id, $id)
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
            't1.validator_pattern,' .
            't1.validator_min_date,' .
            't1.validator_max_date,' .
            't1.error_text,' .              
            't1.selections,' .           
            't1.max_lines')
        ->from('service_references AS t1')
        ->join('sub_modules_info AS t2', 't2.sub_module_id = t1.sub_module_id', 'left')  
        ->where(                
            [
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't1.sub_module_id' => $id,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    public function _get_sub_modules_by_id($branch_id, $id)
    {
        $this->db
            ->select(
                't5.id as module_id,' .
                't2.id,' .
                't2.name,' .
                't2.description,' .
                't2.acceptance_content,' .
                't2.thank_you_content,' .
                't2.create_url as url, ' .
                't3.full_path as cover_photo')
            ->from('sub_modules_info AS t1')
            ->join('sub_modules AS t2', 't2.id = t1.sub_module_id', 'left')
            ->join('media AS t3', 't3.id = t2.media_id', 'left')
            ->join('branch AS t4', 't4.id = t1.branch_id', 'left')            
            ->join('modules AS t5', 't5.id = t2.module_id', 'left')
            ->where(                
                [
                    't2.program_id' => 3,
                    't1.is_deleted' => 0,
                    't1.branch_id' => $branch_id,
                    't1.sub_module_id' => $id
                ]
            );

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

}