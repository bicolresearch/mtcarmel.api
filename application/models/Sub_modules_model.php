<?php

/*
    Filename    : Sub_modules_model.php
    Location    : application/models/Sub_modules_model.php
    Purpose     : Sub_modules_model model
    Created     : 2019-07-26 10:44:51 by Scarlet Witch 
    Updated     : 10/07/2019 14:40:51 by Scarlet Witch  
    Changes     : updated get all and get by id - updated table - sub module and sub module info, deleted _get_confra
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

}