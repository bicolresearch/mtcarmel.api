<?php

/*
    Filename    : Adults.php
    Location    : application/controllers/Adults.php
    Purpose     : Adults baptism controller
    Created     : 08/07/2019 12:38:27 by Scarlet Witch
    Updated     : 10/30/2019 12:17:58 by Scarlet Witch
    Changes     : added role id and user id
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Adults extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        $branch_id = (int)$this->get('branch_id');             
        $role_id = (int)$this->get('role_id');   
        $user_id = (int)$this->get('user_id');

        if ($role_id == 1 && $role_id !== 2 && $role_id !== 3)  {
            $get_all = $this->adults_model->_get_all($branch_id);          //Admin
        } elseif ($role_id == 2 && $role_id !== 1 &&  $role_id !== 3) {
            $get_all = $this->adults_model->_get_by_user_id($user_id);     //User
        } elseif ($role_id == 3 && $role_id !== 1 && $role_id !== 2) {
            $get_all = $this->adults_model->_get_by_priest($branch_id);    //Priest
        }

        if(empty($branch_id) && empty($role_id)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else {
            if (empty($get_all)) {
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } 
            else {
                $this->response($get_all, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
        }
    }

    public function adult_get()
    {
        $branch_id = (int)$this->get('branch_id');        
        $id = (int)$this->get('id');

        if (empty($branch_id) && empty($id)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        $get_by_id = $this->adults_model->_get_by_id($branch_id, $id);

        if (empty($get_by_id)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($get_by_id, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function create_post()
    {
        $data = [
            'branch_id' => $this->post('branch_id'),    
            'module_id' => 6,
            'sub_module_id' => 8,
            'name' => $this->post('name'),
            'dt_birth' => $this->post('dt_birth'),
            'birth_place' => $this->post('birth_place'),
            'name_father' => $this->post('name_father'),
            'religion_father' => $this->post('religion_father'),
            'dt_birth_father' => $this->post('dt_birth_father'),
            'birth_place_father' => $this->post('birth_place_father'),
            'name_mother' => $this->post('name_mother'),
            'religion_mother' => $this->post('religion_mother'),
            'dt_birth_mother' => $this->post('dt_birth_mother'),
            'birth_place_mother' => $this->post('birth_place_mother'),
            'address_1' => $this->post('address_1'),
            'address_2' => $this->post('address_2'),
            'barangay' => $this->post('barangay_code'),
            'city' => $this->post('city_code'),
            'province' => $this->post('province_code'),
            'country' => $this->post('country_code'),
            'marriage' => $this->post('marriage'),
            'place_marriage' => $this->post('place_marriage'),
            'name_contact_person' => $this->post('name_contact_person'),
            'landline_contact_person' => $this->post('landline_contact_person'),
            'mobile_contact_person' => $this->post('mobile_contact_person'),
            'dt_baptism' => $this->post('dt_baptism'),
            'time_baptism' => $this->post('time_baptism'),
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
            $this->adult_model->_create($data);
            
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
            'name' => $this->put('name'),
            'dt_birth' => $this->put('dt_birth'),
            'birth_place' => $this->put('birth_place'),
            'name_father' => $this->put('name_father'),
            'religion_father' => $this->put('religion_father'),
            'dt_birth_father' => $this->put('dt_birth_father'),
            'birth_place_father' => $this->put('birth_place_father'),
            'name_mother' => $this->put('name_mother'),
            'religion_mother' => $this->put('religion_mother'),
            'dt_birth_mother' => $this->put('dt_birth_mother'),
            'birth_place_mother' => $this->put('birth_place_mother'),
            'address_1' => $this->put('address_1'),
            'address_2' => $this->put('address_2'),            
            'barangay' => $this->put('barangay_code'),
            'city' => $this->put('city_code'),
            'province' => $this->put('province_code'),
            'country' => $this->put('country_code'),
            'marriage' => $this->put('marriage'),
            'place_marriage' => $this->put('place_marriage'),
            'name_contact_person' => $this->put('name_contact_person'),
            'landline_contact_person' => $this->put('landline_contact_person'),
            'mobile_contact_person' => $this->put('mobile_contact_person'),
            'dt_baptism' => $this->put('dt_baptism'),
            'time_baptism' => $this->put('time_baptism'),
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
        $getById = $this->adult_model->_get_by_id($id);

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
            $this->adult_model->_update($id, $data);

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
        $getById = $this->adult_model->_get_by_id($id);

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
            $this->adult_model->_update($id, $data);

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
        $getById = $this->adult_model->_get_by_id($id);

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
            $this->adult_model->_hard_delete($id);

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