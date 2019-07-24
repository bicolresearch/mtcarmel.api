<?php

/*
    Filename    : Contact_details_model.php
    Location    : application/models/Contact_details_model.php
    Purpose     : Locations details model
    Created     : 07/24/2019 15:27:48 by Scarlet Witch
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Contact_details_model extends CI_Model
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
            't1.name,' .                
            't1.description,' .    
            't1.address1,' .
            't1.address2,' .
            't1.city,' .
            't1.province,' .
            't1.country,' .
            't1.landline,' .
            't1.mobile,' .
            't1.email,' .
            't1.dt_created as posted_on,' .
            't1.dt_updated as updated_on,' .
            't3.description as social_media')
        ->from('contacts AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('social_media AS t3', 't3.id = t1.social_media_id', 'left')
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
            't1.name,' .                
            't1.description,' .    
            't1.address1,' .
            't1.address2,' .
            't1.city,' .
            't1.province,' .
            't1.country,' .
            't1.landline,' .
            't1.mobile,' .
            't1.email,' .
            't1.dt_created as posted_on,' .
            't1.dt_updated as updated_on,' .
            't3.description as social_media')
        ->from('contacts AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('social_media AS t3', 't3.id = t1.social_media_id', 'left')
        ->where('t1.is_deleted', 0)       
        ->where('t1.id', $id);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }


}