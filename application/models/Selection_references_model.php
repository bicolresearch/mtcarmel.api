<?php

/*
    Filename    : Selection_references_model.php
    Location    : application/models/Selection_references_model.php
    Purpose     : Selection references model
    Created     : 07/30/2019 12:01:13 by Scarlet Witch
    Updated     : 08/27/2019 10:32:04 by Scarlet Witch
    Changes     : updated the status - one model one controller for all status - status of whole service transaction, 
                  approval status by admin/office and approval status by priest/extraordinary ministers/choir
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
            't1.description as name,' .                
            't1.region_code,' .    
            't1.province_code,' .
            't1.city_code,' .
            't1.country_code')
        ->from('barangay AS t1')
        ->where('t1.is_deleted', 0);
        
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Barangay by cityid
    public function _get_all_barangay_by_cityid($id)
    {
        $this->db
        ->select(           
            't1.id,' .
            't1.brgy_code,' .
            't1.description as name,' .                
            't1.region_code,' .    
            't1.province_code,' .
            't1.city_code,' .            
            't1.country_code')
        ->from('barangay AS t1')
        ->where('t1.is_deleted', 0)
        ->where('t1.city_code', $id);
        
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
            't1.description as name,' .                
            't1.region_code,' .    
            't1.province_code,' .
            't1.city_code,' .
            't1.country_code')
        ->from('city AS t1')
        ->where('t1.is_deleted', 0);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

        // City by provinceid
        public function _get_all_city_by_provinceid($id)
        {
            $this->db
            ->select(           
                't1.id,' .
                't1.psgc_code,' .
                't1.description as name,' .                
                't1.region_code,' .    
                't1.province_code,' .
                't1.city_code,' .
                't1.country_code')
            ->from('city AS t1')
            ->where('t1.is_deleted', 0)
            ->where('t1.province_code', $id);
                
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
            't1.description as name,' .                
            't1.region_code,' .    
            't1.province_code,' .
            't1.country_code')
        ->from('province AS t1')
        ->where('t1.is_deleted', 0);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Province
    public function _get_all_province_by_countryid($id)
    {
        $this->db
        ->select(           
            't1.id,' .
            't1.psgc_code,' .
            't1.description as name,' .                
            't1.region_code,' .    
            't1.province_code,' .
            't1.country_code')
        ->from('province AS t1')
        ->where('t1.is_deleted', 0)
        ->where('t1.country_code', $id);

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
            't1.description as name,' .                
            't1.region_code,' .
            't1.country_code')
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
            't1.country_code,' . 
            't1.landline_format,' .               
            't1.mobile_format')
        ->from('country AS t1')
        ->where('t1.is_deleted', 0)
        ->order_by('t1.name', 'ASC');
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Mass Request - Purpose 
    public function _get_all_purpose_mass()
    {
        $this->db
        ->select(    
            't1.id,' .        
            't1.module_id,' .            
            't1.sub_module_id,' .
            't1.name,' .             
            't1.description')
        ->from('global_reference_value AS t1')  
        ->where('t1.group_id', 14)             
        ->where('t1.module_id', 5)
        ->where('t1.sub_module_id', 3)
        ->where('t1.is_deleted', 0);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Status - for whole service transaction, 
    //          for service transaction (approval by admin/office)
    //          for service transaction (approval by priest/extraordinary minister/choir)
    public function _get_all_status()
    {
        $this->db
        ->select(    
            't1.id,' .            
            't1.group_id,' .
            't2.name as group_name,' .            
            't2.description as group_description,' .
            't1.name')
        ->from('global_reference_value AS t1')          
        ->join('global_reference_group AS t2', 't2.id = t1.group_id', 'left')
        ->where('t1.is_deleted', 0)
        ->where_in('t1.group_id', array(1,2,3)) ;

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Liturgical - Occasion 
    public function _get_all_occasion()
    {
        $this->db
        ->select(    
            't1.id,' . 
            't1.name,' .             
            't1.description')
        ->from('global_reference_value AS t1')   
        ->where('t1.is_deleted', 0)        
        ->where('t1.group_id', 11);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Certification - Certificate 
    public function _get_all_certificate()
    {
        $this->db
        ->select(    
            't1.id,' .
            't1.name,' .             
            't1.description')
        ->from('global_reference_value AS t1')
        ->where('t1.is_deleted', 0)
        ->where('t1.group_id', 4);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Certification - Purpose 
    public function _get_all_purpose_certificate()
    {
        $this->db
        ->select(    
            't1.id,' .           
            't1.module_id,' .            
            't1.sub_module_id,' .
            't1.name,' .             
            't1.description')
        ->from('global_reference_value AS t1') 
        ->where('t1.group_id', 14)              
        ->where('t1.module_id', 5)
        ->where('t1.sub_module_id', 5)
        ->where('t1.is_deleted', 0);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Marriage - Religion
    public function _get_all_religion()
    {
        $this->db
        ->select(    
            't1.id,' .
            't1.name,' .
            't1.description')
        ->from('global_reference_value AS t1')  
        ->where('t1.is_deleted', 0)     
        ->where('t1.group_id', 15);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Marriage - Nationality
    public function _get_all_nationality()
    {
        $this->db
        ->select(    
            't1.id,' .
            't1.name,' .
            't1.description')
        ->from('global_reference_value AS t1')  
        ->where('t1.is_deleted', 0)        
        ->where('t1.group_id', 10);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Funeral Service - Civil Status
    public function _get_all_civil_status()
    {
        $this->db
        ->select(    
            't1.id,' .
            't1.name,' .
            't1.description')
        ->from('global_reference_value AS t1')  
        ->where('t1.is_deleted', 0)
        ->where('t1.group_id', 5);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Funeral Service - Funeral Location
    public function _get_all_funeral_location()
    {
        $this->db
        ->select(    
            't1.id,' .
            't1.branch_id,' .
            't1.name,' .
            't1.description')
        ->from('chapel AS t1')  
        ->where('t1.is_deleted', 0);
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Funeral Service - Service
    public function _get_all_service()
    {
        $this->db
        ->select(    
            't1.id,' .
            't1.name,' .
            't1.description')
        ->from('global_reference_value AS t1')  
        ->where('t1.is_deleted', 0)      
        ->where('t1.group_id', 17);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Funeral Chapel - Chapel
    public function _get_all_chapel()
    {
        $this->db
        ->select(    
            't1.id,' .
            't1.branch_id,' .
            't1.name,' .
            't1.description,' .
            't1.amenities,' .
            't1.additional_amenities,' .
            't1.amount,' .
            't1.amt_per,' .
            't1.other_charges,' .
            't1.other_charges_per')
        ->from('chapel AS t1')  
        ->where('t1.is_deleted', 0);
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Events - Events Type
    public function _get_all_events()
    {
        $this->db
        ->select(    
            't1.id,' .
            't1.name,' .
            't1.description')
        ->from('global_reference_value AS t1')  
        ->where('t1.is_deleted', 0)
        ->where('t1.group_id', 7);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Events - Package
    public function _get_all_package()
    {
        $this->db
        ->select(    
            't1.id,' .
            't1.branch_id,' .
            't1.name,' .
            't1.description,' .
            't1.amenities,' .
            't1.additional_amenities,' .
            't1.amount,' .
            't1.amt_per,' .
            't1.other_charges,' .
            't1.other_charges_per')
        ->from('package AS t1')  
        ->where('t1.is_deleted', 0);
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Baptism - Marriage Type
    public function _get_all_marriage_type()
    {
        $this->db
        ->select(    
            't1.id,' .
            't1.name,' .
            't1.description')
        ->from('global_reference_value AS t1')  
        ->where('t1.is_deleted', 0)        
        ->where('t1.group_id', 9);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

}