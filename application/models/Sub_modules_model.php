<?php

/*
    Filename    : Sub_modules_model.php
    Location    : application/models/Sub_modules_model.php
    Purpose     : Sub_modules_model model
    Created     : 2019-07-26 10:44:51 by Scarlet Witch 
    Updated     : 
    Changes     : 
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
                't1.name,' .
                't1.description,' .
                't1.description,' .
                't1.acceptance_content,' .
                't1.thank_you_content,' .
                't2.full_path as cover_photo')
            ->from('sub_modules AS t1')
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')
            ->where('t1.program_id', 3)
            ->where('t1.id', 1)
            ->where('t1.is_deleted', 0);
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _get_by_id($id)
    {
        $this->db
            ->select(
                't1.name,' .
                't1.description,' .
                't1.description,' .
                't1.acceptance_content,' .
                't1.thank_you_content,' .
                't2.full_path as cover_photo')
            ->from('sub_modules AS t1')
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')
            ->where('t1.program_id', 3)
            ->where('t1.id', 1)
            ->where('t1.id', $id);
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

}