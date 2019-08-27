<?php

/*
    Filename    : Marriage_model.php
    Location    : application/models/Marriage_model.php
    Purpose     : Marriage model
    Created     : 08/07/2019 12:49:31 by Scarlet Witch
    Updated     : 08/27/2019 15:19:20 by Scarlet Witch
    Changes     : changed table status to global_reference_value
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Marriage_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all()
    {
        $this->datatables
            ->select(
                't1.id,' .
                't1.are_civilly_married,' .
                't1.with_previous_marriage,' .
                't1.is_anyone_an_ofw,' .
                't1.living_abroad,' .
                't1.is_widower,' .
                't5.name_groom,' .	
                't5.nickname_groom,' .
                't5.dt_birth_groom,' .	
                't5.birth_place_groom,' .	
                't5.religion_groom,' .	
                't5.occupation_groom,' .	
                't5.work_place_groom,' .	
                't5.nationality_groom,' .	
                't5.landline_groom,' .	
                't5.mobile_groom,' .	
                't5.email_groom,' .	
                't5.address_1_groom,' .	
                't5.address_2_groom,' .	
                't5.barangay_groom,' .	
                't5.city_groom,' .	
                't5.province_groom,' .	
                't5.country_groom,' .	
                't5.name_parish_groom,' .	
                't5.address_parish_groom,' .	
                't5.address_provincial_groom,' .	
                't5.name_father_groom,' .	
                't5.nationality_father_groom,' .	
                't5.name_mother_groom,' .	
                't5.nationality_mother_groom,' .	
                't5.name_bride,' .	
                't5.nickname_bride,' .	
                't5.dt_birth_bride,' .	
                't5.birth_place_bride,' .	
                't5.religion_bride,' .	
                't5.occupation_bride,' .	
                't5.work_place_bride,' .	
                't5.nationality_bride,' .	
                't5.landline_bride,' .	
                't5.mobile_bride,' .	
                't5.email_bride,' .	
                't5.address_1_bride,' .	
                't5.address_2_bride,' .	
                't5.barangay_bride,' .	
                't5.city_bride,' .	
                't5.province_bride,' .	
                't5.country_bride,' .	
                't5.name_parish_bride,' .	
                't5.address_parish_bride,' .	
                't5.address_provincial_bride,' .	
                't5.name_father_bride,' .	
                't5.nationality_father_bride,' .	
                't5.name_mother_bride,' .	
                't5.nationality_mother_bride,' .	
                't1.name_contact_person,' .	
                't1.landline_contact_person,' .	
                't1.mobile_contact_person,' .
                't4.name AS status,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on,' .                
                't3.username AS author')
            ->from('service_transactions AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')              
            ->join('users AS t3', 't3.id = t1.created_by', 'left')                                    
            ->join('global_reference_value AS t4', 't4.id = t1.status', 'left')         
            ->join('couple AS t5', 't5.id = t1.couple', 'left') 
            ->where('t1.module_id', 9)
            ->where('t1.sub_module_id', 12)
            ->where('t1.is_deleted', 0)                        
            ->order_by('t1.status', 'ASC')                    
            ->order_by('t1.id', 'DESC');             

        return json_decode($this->datatables->generate());
    }

    public function _get_by_id($id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.are_civilly_married,' .
                't1.with_previous_marriage,' .
                't1.is_anyone_an_ofw,' .
                't1.living_abroad,' .
                't1.is_widower,' .
                't5.name_groom,' .	
                't5.nickname_groom,' .
                't5.dt_birth_groom,' .	
                't5.birth_place_groom,' .	
                't5.religion_groom,' .	
                't5.occupation_groom,' .	
                't5.work_place_groom,' .	
                't5.nationality_groom,' .	
                't5.landline_groom,' .	
                't5.mobile_groom,' .	
                't5.email_groom,' .	
                't5.address_1_groom,' .	
                't5.address_2_groom,' .	
                't5.barangay_groom,' .	
                't5.city_groom,' .	
                't5.province_groom,' .	
                't5.country_groom,' .	
                't5.name_parish_groom,' .	
                't5.address_parish_groom,' .	
                't5.address_provincial_groom,' .	
                't5.name_father_groom,' .	
                't5.nationality_father_groom,' .	
                't5.name_mother_groom,' .	
                't5.nationality_mother_groom,' .	
                't5.name_bride,' .	
                't5.nickname_bride,' .	
                't5.dt_birth_bride,' .	
                't5.birth_place_bride,' .	
                't5.religion_bride,' .	
                't5.occupation_bride,' .	
                't5.work_place_bride,' .	
                't5.nationality_bride,' .	
                't5.landline_bride,' .	
                't5.mobile_bride,' .	
                't5.email_bride,' .	
                't5.address_1_bride,' .	
                't5.address_2_bride,' .	
                't5.barangay_bride,' .	
                't5.city_bride,' .	
                't5.province_bride,' .	
                't5.country_bride,' .	
                't5.name_parish_bride,' .	
                't5.address_parish_bride,' .	
                't5.address_provincial_bride,' .	
                't5.name_father_bride,' .	
                't5.nationality_father_bride,' .	
                't5.name_mother_bride,' .	
                't5.nationality_mother_bride,' .	
                't1.name_contact_person,' .	
                't1.landline_contact_person,' .	
                't1.mobile_contact_person,' .
                't4.name AS status,' .
                't1.dt_created AS posted_on,' .
                't1.dt_updated AS updated_on,' .                
                't3.username AS author')
            ->from('service_transactions AS t1')
            ->join('branch AS t2', 't2.id = t1.branch_id', 'left')              
            ->join('users AS t3', 't3.id = t1.created_by', 'left')                                    
            ->join('global_reference_value AS t4', 't4.id = t1.status', 'left')         
            ->join('couple AS t5', 't5.id = t1.couple', 'left') 
            ->where('t1.module_id', 9)
            ->where('t1.sub_module_id', 12)
            ->where('t1.is_deleted', 0)  
            ->where('t1.id', $id);
            
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('service_transactions', $data);

        $this->db->insert('couple', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('service_transactions', $data);

        $this->db
            ->where('id', $id)
            ->update('couple', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('service_transactions', $data);

        $this->db
            ->where('id', $id)
            ->update('couple', $data);


        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('service_transactions');

        $this->db
            ->where('id', $id)
            ->delete('couple');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}