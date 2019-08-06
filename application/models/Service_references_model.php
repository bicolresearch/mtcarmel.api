<?php

/*
    Filename    : Service_references_model.php
    Location    : application/models/Service_references_model.php
    Purpose     : Service references model
    Created     : 07/25/2019 18:42:23 by Scarlet Witch
    Updated     : 08/06/2019 14:13:55 by Scarlet Witch
    Changes     : added where is_active = 0, on select - maxLines, order by rank
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Service_references_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    // Join Us - Confraternity
    public function _get_all_confraternity()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')        
        ->where('t1.module_id', 4)
        ->where('t1.Sub_module_id', 1)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0)
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    //Make a Request - Prayer Request
    public function _get_all_prayer_request()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.module_id', 5)
        ->where('t1.Sub_module_id', 2)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0)
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    //Make a Request - Mass Request
    public function _get_all_mass_request()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.module_id', 5)
        ->where('t1.Sub_module_id', 3)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0)
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    //Make a Request - Liturgical Service
    public function _get_all_liturgical_service()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.module_id', 5)
        ->where('t1.Sub_module_id', 4)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0)
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    //Make a Request - Certification
    public function _get_all_certification()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.module_id', 5)
        ->where('t1.Sub_module_id', 5)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0)
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    //Baptism - Individual Baptism
    public function _get_all_individual_baptism()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.module_id', 6)
        ->where('t1.Sub_module_id', 6)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0)
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    //Baptism - Community Baptism
    public function _get_all_community_baptism()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.module_id', 6)
        ->where('t1.Sub_module_id', 7)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0)
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }
    
    //Baptism - Adult Baptism
    public function _get_all_adult_baptism()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.module_id', 6)
        ->where('t1.Sub_module_id', 8)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0)
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    //Communion - First Communion
    public function _get_all_first_communion()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.module_id', 7)
        ->where('t1.Sub_module_id', 9)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0)
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    //Communion - Communion of the Sick
    public function _get_all_communion_of_the_sick()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.module_id', 7)
        ->where('t1.Sub_module_id', 10)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0)
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    
    
    //Confirmation 
    public function _get_all_confirmation()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.module_id', 8)
        ->where('t1.Sub_module_id', 11)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0)
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    //Marriage
    public function _get_all_marriage()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.module_id', 9)
        ->where('t1.Sub_module_id', 12)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0)
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    //Passing - Funeral Service
    public function _get_all_funeral_service()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.module_id', 10)
        ->where('t1.Sub_module_id', 13)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0)
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    //Passing - Funeral Chapel
    public function _get_all_Funeral_chapel()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.module_id', 10)
        ->where('t1.Sub_module_id', 14)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0)
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    //Passing - Crypt Lobby - Mass for the Dead
    public function _get_all_crypt_lobby()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.module_id', 10)
        ->where('t1.Sub_module_id', 15)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    //Passing - November Mass for the Dead
    public function _get_all_november_mass()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.module_id', 10)
        ->where('t1.Sub_module_id', 16)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0)
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    //Events - Father Mark Horan Hall - Venue 
    public function _get_all_events_fmhh_venue()
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
            't1.selections,' .           
            't1.maxLines')
        ->from('service_references AS t1')
        ->join('branch AS t2', 't2.id = t1.branch_id', 'left')
        ->join('sub_modules AS t3', 't3.id = t1.sub_module_id', 'left')
        ->where('t1.module_id', 11)
        ->where('t1.Sub_module_id', 17)
        ->where('t1.is_active', 0)
        ->where('t1.is_deleted', 0)
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    } 



}