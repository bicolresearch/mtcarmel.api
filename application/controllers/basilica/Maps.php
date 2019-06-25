<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Maps extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function maps_get()
    {
        // Maps from a data store e.g. database
        $maps = $this->maps_model->_get_all();

        $id = $this->get('id');

        // If the id parameter doesn't exists return all the maps
        if (empty($id)) {
            // Check if the maps data store contains maps (in case the database result returns NULL)
            if (empty($maps)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($maps, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
        } else {
            // Set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
    }

    public function map_get()
    {
        // Find and return a single record for a particular map.
        $id = (int)$this->get('id');

        // Validate the id.
        if (empty($id)) {
            // Invalid id, set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the map from the array, using the id as key for retrieval.
        // Usually a model is to be used for this.
        $map = $this->maps_model->_get_by_id($id);

        if (empty($map)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($map, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function create_map()
    {
        $data = [
            'branch_id' => 1,
            'lat' => $this->post('lat'),
            'lng' => $this->post('lng'),
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
            $this->maps_model->_create($data);
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
        'lat' => $this->put('lat'),
        'lng' => $this->put('lng'),
        'updated_by' => $this->put('user_id'),
        'dt_updated' => date('Y-m-d H:i:s')
    ];

    // Find and return a single record for a particular map.
    $id = (int)$this->get('id');

    // Validate the id.
    if (empty($id)) {
        // Invalid id, set the response and exit.
        $this->response([
            'status' => FALSE,
            'message' => 'Bad Request'
        ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
    }

    // Get the map from the array, using the id as key for retrieval.
    // Usually a model is to be used for this.
    $map = $this->maps_model->_get_by_id($id);

    if (empty($map)) {
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
        $this->maps_model->_update($id, $data);

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

        // Find and return a single record for a particular map.
        $id = (int)$this->get('id');

        // Validate the id.
        if (empty($id)) {
            // Invalid id, set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the map from the array, using the id as key for retrieval.
        // Usually a model is to be used for this.
        $map = $this->maps_model->_get_by_id($id);

        if (empty($map)) {
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
            $this->maps_model->_update($id, $data);

            $this->response([
                'status' => TRUE,
                'message' => 'Updated'
            ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function hard_delete_delete()
    {
        // Find and return a single record for a particular map.
        $id = (int)$this->get('id');

        // Validate the id.
        if (empty($id)) {
            // Invalid id, set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the map from the array, using the id as key for retrieval.
        // Usually a model is to be used for this.
        $map = $this->maps_model->_get_by_id($id);

        if (empty($map)) {
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
            $this->maps_model->_hard_delete($id);

            // Set the response and exit
            $this->set_response([
                'status' => TRUE,
                'message' => 'Deleted'
            ], REST_Controller::HTTP_NO_CONTENT); // NO_CONTENT (204) being the HTTP response code
        }
    }
}

/* End of file: Maps.php */
/* Location: application/controller/basilica/Maps.php*/