<?php

/*
    Filename    : Modules.php
    Location    : application/controllers/Modules.php
    Purpose     : Modules controller
    Created     : 6/24/2019 by Scarlet Witch
    Updated     : 6/28/2019 by Spiderman
    Changes     : Changed commenting format
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Modules extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // Modules from a data store e.g. database
        $modules = $this->modules_model->_get_all();

        $id = $this->get('id');

        // If the id parameter doesn't exists return all the modules
        if (empty($id)) {
            // Check if the modules data store contains modules (in case the database result returns NULL)
            if (empty($modules)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($modules, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
        } else {
            // Set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
    }

    public function module_get()
    {
        // Find and return a single record for a particular module.
        $id = (int)$this->get('id');

        // Validate the id.
        if (empty($id)) {
            // Invalid id, set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the module from the array, using the id as key for retrieval.
        // Usually a model is to be used for this.
        $module = $this->modules_model->_get_by_id($id);

        if (empty($module)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($module, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function create_post()
    {
        $data = [
            'branch_id' => 1,
            'name' => $this->post('name'),
            'description' => $this->post('description'),
            'media_id' => $this->post('media_id'),
            'created_by' => $this->post('user_id'),
            'dt_created' => date('Y-m-d H:i:s'),
        ];

        // Validate data array if it contains NULL values
        if (in_array(null, $data, true)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else {
            // If data array does not contains NULL values, create new resource to database
            $this->modules_model->_create($data);
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
            'branch_id' => $this->put('branch_id'),
            'name' => $this->put('name'),
            'description' => $this->put('description'),
            'media_id' => $this->put('media_id'),
            'updated_by' => $this->put('user_id'),
            'dt_updated' => date('Y-m-d H:i:s')
        ];

        // Find and return a single record for a particular description.
        $id = (int)$this->get('id');

        // Validate the id.
        if (empty($id)) {
            // Invalid id, set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the module from the array, using the id as key for retrieval.
        // Usually a model is to be used for this.
        $module = $this->modules_model->_get_by_id($id);

        if (empty($module)) {
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
            $this->modules_model->_update($id, $data);

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

        // Find and return a single record for a particular module.
        $id = (int)$this->get('id');

        // Validate the id.
        if (empty($id)) {
            // Invalid id, set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the module from the array, using the id as key for retrieval.
        // Usually a model is to be used for this.
        $module = $this->modules_model->_get_by_id($id);

        if (empty($module)) {
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
            $this->modules_model->_update($id, $data);

            $this->response([
                'status' => TRUE,
                'message' => 'Updated'
            ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function hard_delete_delete()
    {
        // Find and return a single record for a particular module.
        $id = (int)$this->get('id');

        // Validate the id.
        if (empty($id)) {
            // Invalid id, set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the module from the array, using the id as key for retrieval.
        // Usually a model is to be used for this.
        $module = $this->modules_model->_get_by_id($id);

        if (empty($module)) {
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
            $this->modules_model->_hard_delete($id);

            // Set the response and exit
            $this->set_response([
                'status' => TRUE,
                'message' => 'Deleted'
            ], REST_Controller::HTTP_NO_CONTENT); // NO_CONTENT (204) being the HTTP response code
        }
    }
}