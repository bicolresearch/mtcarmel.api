<?php

/*
    Filename    : Selection_references_model.php
    Location    : application/models/Selection_references_model.php
    Purpose     : Selection references model
    Created     : 07/30/2019 12:01:13 by Scarlet Witch
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Selection_references_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    // Barangay
    public function _get_all_barangay()
    {
        $this->db
        ->select(           
            't1.id,' .
            't1.brgy_code,' .
            't1.description,' .                
            't1.region_code,' .    
            't1.province_code,' .
            't1.city_code')
        ->from('barangay AS t1')
        ->where('t1.is_deleted', 0);
        
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // City
    public function _get_all_city()
    {
        $this->db
        ->select(           
            't1.id,' .
            't1.psgc_code,' .
            't1.description,' .                
            't1.region_code,' .    
            't1.province_code,' .
            't1.city_code')
        ->from('city AS t1')
        ->where('t1.is_deleted', 0);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Province
    public function _get_all_province()
    {
        $this->db
        ->select(           
            't1.id,' .
            't1.psgc_code,' .
            't1.description,' .                
            't1.region_code,' .    
            't1.province_code')
        ->from('province AS t1')
        ->where('t1.is_deleted', 0);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Region
    public function _get_all_region()
    {
        $this->db
        ->select(           
            't1.id,' .
            't1.psgc_code,' .
            't1.description,' .                
            't1.region_code')
        ->from('region AS t1')
        ->where('t1.is_deleted', 0);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Country
    public function _get_all_country()
    {
        $this->db
        ->select(    
            't1.id,' .
            't1.name,' .
            't1.code,' . 
            't1.landline_format,' .               
            't1.mobile_format')
        ->from('country AS t1')
        ->where('t1.is_deleted', 0);
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

   



}