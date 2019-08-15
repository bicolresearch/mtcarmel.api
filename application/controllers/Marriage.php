<?php

/*
    Filename    : Marriage.php
    Location    : application/controllers/Marriage.php
    Purpose     : Marriage controller
    Created     : 08/07/2019 16:08:36 by Scarlet Witch
    Updated     : 08/15/2019 13:08:55 by Scarlet Witch
    Changes     : updated the create post/update - from country to country_code, barangay to barangay_code, city to city_code and provice to province_code
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Marriage extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // Get the data from the database
        $getAll = $this->marriage_model->_get_all();

        // Get the id parameter
        $id = (int)$this->get('id');

        // Validate id
        if (empty($id)) {
            // In case the database result returns NULL
            if (empty($getAll)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($getAll, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
    }

    public function medium_get()
    {
        // Get the id parameter
        $id = (int)$this->get('id');

        // Validate the id
        if (empty($id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the data from the array, using the id as key for retrieval
        $getById = $this->marriage_model->_get_by_id($id);

        if (empty($getById)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($getById, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function create_post()
    {
        $data = [
            'branch_id' => $this->post('branch_id'),    
            'module_id' => 9,
            'sub_module_id' => 12,
            'are_civilly_married' => $this->post('are_civilly_married'),
            'with_previous_marriage' => $this->post('with_previous_marriage'),
            'is_anyone_an_ofw' => $this->post('is_anyone_an_ofw'),
            'living_abroad' => $this->post('living_abroad'),
            'is_widower' => $this->post('is_widower'),
            'name_groom' => $this->post('name_groom'),
            'nickname_groom' => $this->post('nickname_groom'),
            'dt_birth_groom' => $this->post('dt_birth_groom'),
            'birth_place_groom' => $this->post('birth_place_groom'),
            'religion_groom' => $this->post('religion_groom'),
            'occupation_groom' => $this->post('occupation_groom'),
            'work_place_groom' => $this->post('work_place_groom'),
            'nationality_groom' => $this->post('nationality_groom'),
            'landline_groom' => $this->post('landline_groom'),
            'mobile_groom' => $this->post('mobile_groom'),
            'email_groom' => $this->post('email_groom'),
            'address_1_groom' => $this->post('address_1_groom'),
            'address_2_groom' => $this->post('address_2_groom'),            
            'barangay_groom' => $this->post('barangay_code_groom'),
            'city_groom' => $this->post('city_code_groom'),
            'province_groom' => $this->post('province_code_groom'),
            'country_groom' => $this->post('country_code_groom'),
            'name_parish_groom' => $this->post('name_parish_groom'),
            'address_parish_groom' => $this->post('address_parish_groom'),
            'address_provincial_groom' => $this->post('address_provincial_groom'),
            'name_father_groom' => $this->post('name_father_groom'),
            'nationality_father_groom' => $this->post('nationality_father_groom'),
            'name_mother_groom' => $this->post('name_mother_groom'),
            'nationality_mother_groom' => $this->post('nationality_mother_groom'),
            'name_bride' => $this->post('name_bride'),
            'nickname_bride' => $this->post('nickname_bride'),
            'dt_birth_bride' => $this->post('dt_birth_bride'),
            'birth_place_bride' => $this->post('birth_place_bride'),
            'religion_bride' => $this->post('religion_bride'),
            'occupation_bride' => $this->post('occupation_bride'),
            'work_place_bride' => $this->post('work_place_bride'),
            'nationality_bride' => $this->post('nationality_bride'),
            'landline_bride' => $this->post('landline_bride'),
            'mobile_bride' => $this->post('mobile_bride'),
            'email_bride' => $this->post('email_bride'),
            'address_1_bride' => $this->post('address_1_bride'),
            'address_2_bride' => $this->post('address_2_bride'),            
            'barangay_bride' => $this->post('barangay_code_bride'),
            'city_bride' => $this->post('city_code_bride'),
            'province_bride' => $this->post('province_code_bride'),
            'country_bride' => $this->post('country_code_bride'),
            'name_parish_bride' => $this->post('name_parish_bride'),
            'address_parish_bride' => $this->post('address_parish_bride'),
            'address_provincial_bride' => $this->post('address_provincial_bride'),
            'nname_father_brideame' => $this->post('name_father_bride'),
            'nationality_father_bride' => $this->post('nationality_father_bride'),
            'name_mother_bride' => $this->post('name_mother_bride'),
            'nationality_mother_bride' => $this->post('nationality_mother_bride'),
            'name_contact_person' => $this->post('name_contact_person'),
            'landline_contact_person' => $this->post('landline_contact_person'),
            'mobile_contact_person' => $this->post('mobile_contact_person'),
            'created_by' => $this->post('user_id'),
            'dt_created' => date('Y-m-d H:i:s')
        ];

        // Validate data array if it contains NULL values
        if (in_array(null, $data, true)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request',
                'data' => $data
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else {
            // Convert base64 string to an image file
            //$this->base64_to_image($this->post('base64'), $data['full_path']);

            // If data array does not contains NULL values, create new resource to database
            $this->marriage_model->_create($data);
            
            // Set the response and exit
            $this->response([
                'status' => TRUE,
                'message' => 'Created'
            ], REST_Controller::HTTP_CREATED); // CREATED (201) being the HTTP response code
        }
    }

    public function update_put()
    {
        $data = [
            'are_civilly_married' => $this->put('are_civilly_married'),
            'with_previous_marriage' => $this->put('with_previous_marriage'),
            'is_anyone_an_ofw' => $this->put('is_anyone_an_ofw'),
            'living_abroad' => $this->put('living_abroad'),
            'is_widower' => $this->put('is_widower'),
            'name_groom' => $this->put('name_groom'),
            'nickname_groom' => $this->put('nickname_groom'),
            'dt_birth_groom' => $this->put('dt_birth_groom'),
            'birth_place_groom' => $this->put('birth_place_groom'),
            'religion_groom' => $this->put('religion_groom'),
            'occupation_groom' => $this->put('occupation_groom'),
            'work_place_groom' => $this->put('work_place_groom'),
            'nationality_groom' => $this->put('nationality_groom'),
            'landline_groom' => $this->put('landline_groom'),
            'mobile_groom' => $this->put('mobile_groom'),
            'email_groom' => $this->put('email_groom'),
            'address_1_groom' => $this->put('address_1_groom'),
            'address_2_groom' => $this->put('address_2_groom'),
            'barangay_groom' => $this->put('barangay_code_groom'),
            'city_groom' => $this->put('city_code_groom'),
            'province_groom' => $this->put('province_code_groom'),
            'country_groom' => $this->put('country_code_groom'),
            'name_parish_groom' => $this->put('name_parish_groom'),
            'address_parish_groom' => $this->put('address_parish_groom'),
            'address_provincial_groom' => $this->put('address_provincial_groom'),
            'name_father_groom' => $this->put('name_father_groom'),
            'nationality_father_groom' => $this->put('nationality_father_groom'),
            'name_mother_groom' => $this->put('name_mother_groom'),
            'nationality_mother_groom' => $this->put('nationality_mother_groom'),
            'name_bride' => $this->put('name_bride'),
            'nickname_bride' => $this->put('nickname_bride'),
            'dt_birth_bride' => $this->put('dt_birth_bride'),
            'birth_place_bride' => $this->put('birth_place_bride'),
            'religion_bride' => $this->put('religion_bride'),
            'occupation_bride' => $this->put('occupation_bride'),
            'work_place_bride' => $this->put('work_place_bride'),
            'nationality_bride' => $this->put('nationality_bride'),
            'landline_bride' => $this->put('landline_bride'),
            'mobile_bride' => $this->put('mobile_bride'),
            'email_bride' => $this->put('email_bride'),
            'address_1_bride' => $this->put('address_1_bride'),
            'address_2_bride' => $this->put('address_2_bride'),
            'barangay_bride' => $this->put('barangay_code_bride'),
            'city_bride' => $this->put('city_code_bride'),
            'province_bride' => $this->put('province_code_bride'),
            'country_bride' => $this->put('country_code_bride'),
            'name_parish_bride' => $this->put('name_parish_bride'),
            'address_parish_bride' => $this->put('address_parish_bride'),
            'address_provincial_bride' => $this->put('address_provincial_bride'),
            'nname_father_brideame' => $this->put('name_father_bride'),
            'nationality_father_bride' => $this->put('nationality_father_bride'),
            'name_mother_bride' => $this->put('name_mother_bride'),
            'nationality_mother_bride' => $this->put('nationality_mother_bride'),
            'name_contact_person' => $this->put('name_contact_person'),
            'landline_contact_person' => $this->put('landline_contact_person'),
            'mobile_contact_person' => $this->put('mobile_contact_person'),
            'updated_by' => $this->put('user_id'),
            'dt_updated' => date('Y-m-d H:i:s')
        ];

        // Get the id parameter
        $id = (int)$this->get('id');

        // Validate the id
        if (empty($id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the data from the array, using the id as key for retrieval
        $getById = $this->marriage_model->_get_by_id($id);

        if (empty($getById)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }

        // Validate data array if it contains NULL value
        if (in_array(null, $data, true)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else {
            // If data array does not contains NULL values, update the resource
            $this->marriage_model->_update($id, $data);

            $this->response([
                'status' => TRUE,
                'message' => 'Updated'
            ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function soft_delete_put()
    {
        $data = [
            'is_deleted' => 1,
            'updated_by' => $this->put('user_id'),
            'dt_updated' => date('Y-m-d H:i:s')
        ];

        // Get the id parameter
        $id = (int)$this->get('id');

        // Validate the id
        if (empty($id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the data from the array, using the id as key for retrieval
        $getById = $this->marriage_model->_get_by_id($id);

        if (empty($getById)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }

        // Validate data array if it contains NULL value
        if (in_array(null, $data, true)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else {
            // If data array does not contains NULL values, update the resource
            $this->marriage_model->_update($id, $data);

            $this->response([
                'status' => TRUE,
                'message' => 'Updated'
            ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function hard_delete_delete()
    {
        // Get the id parameter
        $id = (int)$this->get('id');

        // Validate the id
        if (empty($id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the data from the array, using the id as key for retrieval.
        $getById = $this->marriage_model->_get_by_id($id);

        if (empty($getById)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }

        // Validate data array if it contains NULL value
        if (empty($id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else {
            // Delete the resource
            $this->marriage_model->_hard_delete($id);

            // Set the response and exit
            $this->set_response([
                'status' => TRUE,
                'message' => 'Deleted'
            ], REST_Controller::HTTP_NO_CONTENT); // NO_CONTENT (204) being the HTTP response code
        }
    }

    // TODO: This should be in the custom helper
    private function base64_to_image($base64_string, $output_file) {
        $file = fopen($output_file, "wb");
    
        $data = explode(',', $base64_string);
    
        fwrite($file, base64_decode($data[1]));
        fclose($file);
    
        return $output_file;
    }
}