<?php

/*
    Filename    : Community.php
    Location    : application/controllers/Community.php
    Purpose     : Community baptism controller
    Created     : 08/07/2019 12:38:27 by Scarlet Witch
    Updated     : 08/15/2019 13:02:44 by Scarlet Witch
    Changes     : updated the create post/update - from country to country_code, barangay to barangay_code, city to city_code and provice to province_code
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Community extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // Get the data from the database
        $getAll = $this->community_model->_get_all();

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
        $getById = $this->community_model->_get_by_id($id);

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
            'module_id' => 6,
            'sub_module_id' => 7,
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
            $this->community_model->_create($data);
            
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
        $getById = $this->community_model->_get_by_id($id);

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
            $this->community_model->_update($id, $data);

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
        $getById = $this->community_model->_get_by_id($id);

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
            $this->community_model->_update($id, $data);

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
        $getById = $this->community_model->_get_by_id($id);

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
            $this->community_model->_hard_delete($id);

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