<?php

/*
    Filename    : Mass_request.php
    Location    : application/controllers/Mass_request.php
    Purpose     : Mass request controller
    Created     : 07/31/2019 13:44:50 by Scarlet Witch
    Updated     : 08/23/2019 16:29:00 by Scarlet Witch
    Changes     : added role_id
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Mass_request extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // Get the data from the database
        $getAll = $this->mass_request_model->_get_all();

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
        $getById = $this->mass_request_model->_get_by_id($id);

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
            'module_id' => 5,
            'sub_module_id' => 3,
            'status' => 1,
            'name' => $this->post('name'),
            'purpose_mass' => $this->post('purpose_mass'),
            'dt_offered' => $this->post('dt_offered'),
            'time_offered' => $this->post('time_offered'),
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
            $this->mass_request_model->_create($data);
            
            // Set the response and exit
            $this->response([
                'status' => TRUE,
                'message' => 'Created'
            ], REST_Controller::HTTP_CREATED); // CREATED (201) being the HTTP response code
        }
    }

    public function update_put()
    {
        $role_id = (int)$this->get('role_id');
        $status_id = (int)$this->get('status');

        if ($role_id=1) {

            if ($status_id=12) {
                $data = [                                     
                    'status' => 2,
                    'status_admin' => $this->put('status'),
                    'name' => $this->put('name'),
                    'purpose_mass' => $this->put('purpose_mass'),
                    'dt_offered' => $this->put('dt_offered'),
                    'time_offered' => $this->put('time_offered'),
                    'updated_by' => $this->put('user_id'),
                    'dt_updated' => date('Y-m-d H:i:s')
                ];
            } else {
                $data = [
                    'status_admin' => $this->put('status'),
                    'name' => $this->put('name'),
                    'purpose_mass' => $this->put('purpose_mass'),
                    'dt_offered' => $this->put('dt_offered'),
                    'time_offered' => $this->put('time_offered'),
                    'updated_by' => $this->put('user_id'),
                    'dt_updated' => date('Y-m-d H:i:s')
                ];
            }
            

        } else if ($role_id=2) {
            $data = [                
                'name' => $this->put('name'),
                'purpose_mass' => $this->put('purpose_mass'),
                'dt_offered' => $this->put('dt_offered'),
                'time_offered' => $this->put('time_offered'),
                'updated_by' => $this->put('user_id'),
                'dt_updated' => date('Y-m-d H:i:s')
            ];
            
        } else if ($role_id=3) {
            
            if ($status_id=12) {
                $data = [                    
                    'status' => 2,
                    'status_ministers' => $this->put('status'),
                    'name' => $this->put('name'),
                    'purpose_mass' => $this->put('purpose_mass'),
                    'dt_offered' => $this->put('dt_offered'),
                    'time_offered' => $this->put('time_offered'),
                    'updated_by' => $this->put('user_id'),
                    'dt_updated' => date('Y-m-d H:i:s')
                ];
            } else {
                $data = [     
                    'status_ministers' => $this->put('status'),
                    'name' => $this->put('name'),
                    'purpose_mass' => $this->put('purpose_mass'),
                    'dt_offered' => $this->put('dt_offered'),
                    'time_offered' => $this->put('time_offered'),
                    'updated_by' => $this->put('user_id'),
                    'dt_updated' => date('Y-m-d H:i:s')
                ];
            }
        } 

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
        $getById = $this->mass_request_model->_get_by_id($id);

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
            $this->mass_request_model->_update($id, $data);

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
        $getById = $this->mass_request_model->_get_by_id($id);

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
            $this->mass_request_model->_update($id, $data);

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
        $getById = $this->mass_request_model->_get_by_id($id);

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
            $this->mass_request_model->_hard_delete($id);

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