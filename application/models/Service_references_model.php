<?php

/*
    Filename    : Service_references_model.php
    Location    : application/models/Service_references_model.php
    Purpose     : Service references model
    Created     : 07/25/2019 18:42:23 by Scarlet Witch
    Updated     : 10/08/2019 14:13:49 by Scarlet Witch
    Changes     : added service function for bookings
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

    public function _get_sub_modules_by_id($branch_id, $sub_module_id)
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
                    't1.sub_module_id' => $sub_module_id
                ]
            );

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    // Join Us - Confraternity
    public function _get_all_confraternities($branch_id)
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
                't1.module_id' => 4,
                't1.sub_module_id' => 1,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    // Join Us - Application Form
    public function _get_all_application_forms($branch_id)
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
                't1.module_id' => 4,
                't1.sub_module_id' => 18,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;   
    }

    //Make a Request - Prayer Request
    public function _get_all_prayer_requests($branch_id)
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
                't1.module_id' => 5,
                't1.sub_module_id' => 2,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    //Make a Request - Mass Request
    public function _get_all_mass_requests($branch_id)
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
                't1.module_id' => 5,
                't1.sub_module_id' => 3,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    //Make a Request - Liturgical Service
    public function _get_all_liturgical_services($branch_id)
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
                't1.module_id' => 5,
                't1.sub_module_id' => 4,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    //Make a Request - Certification
    public function _get_all_certifications($branch_id)
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
                't1.module_id' => 5,
                't1.sub_module_id' => 5,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;   
    }

    //Baptism - Individual Baptism
    public function _get_all_individual_baptisms($branch_id)
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
                't1.module_id' => 6,
                't1.sub_module_id' => 6,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    //Baptism - Community Baptism
    public function _get_all_community_baptisms($branch_id)
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
                't1.module_id' => 6,
                't1.sub_module_id' => 7,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }
    
    //Baptism - Adult Baptism
    public function _get_all_adult_baptisms($branch_id)
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
                't1.module_id' => 6,
                't1.sub_module_id' => 8,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    //Communion - First Communion
    public function _get_all_first_communions($branch_id)
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
                't1.module_id' => 7,
                't1.sub_module_id' => 9,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    //Communion - Communion of the Sick
    public function _get_all_communion_of_the_sick($branch_id)
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
                't1.module_id' => 7,
                't1.sub_module_id' => 10,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    
    
    //Confirmation 
    public function _get_all_confirmations($branch_id)
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
                't1.module_id' => 8,
                't1.sub_module_id' => 11,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    //Marriage
    public function _get_all_marriages($branch_id)
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
                't1.module_id' => 9,
                't1.sub_module_id' => 12,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    //Passing - Funeral Service
    public function _get_all_funeral_services($branch_id)
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
                't1.module_id' => 10,
                't1.sub_module_id' => 13,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    //Passing - Funeral Chapel
    public function _get_all_funeral_chapels($branch_id)
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
                't1.module_id' => 10,
                't1.sub_module_id' => 14,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    //Passing - Crypt Lobby - Mass for the Dead
    public function _get_all_crypt_lobbies($branch_id)
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
                't1.module_id' => 10,
                't1.sub_module_id' => 15,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    //Passing - November Mass for the Dead
    public function _get_all_november_masses($branch_id)
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
                't1.module_id' => 10,
                't1.sub_module_id' => 16,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }    

    //Events - Father Mark Horan Hall - Venue 
    public function _get_all_events_fmhh_venues($branch_id)
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
                't1.module_id' => 11,
                't1.sub_module_id' => 17,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    } 

    //Bookings - Bookings Retreat 
    public function _get_all_bookings($branch_id)
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
                't1.module_id' => 18,
                't1.sub_module_id' => 19,
                't1.is_active' => 0,
                't1.is_deleted' => 0,
                't2.branch_id' => $branch_id
            ]
        )
        ->order_by('t1.rank', "ASC");

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    } 




}