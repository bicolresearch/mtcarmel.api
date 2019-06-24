<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Boundaries extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function boundaries_get()
    {
        // Boundaries from a data store e.g. database
        $boundaries = $this->boundaries_model->_get_all();

        $id = $this->get('id');

        // If the id parameter doesn't exists return all the boundaries
        if (empty($id)) {
            // Check if the boundaries data store contains boundaries (in case the database result returns NULL)
            if (empty($boundaries)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($boundaries, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
        } else {
            // Set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
    }

    public function boundary_get()
    {
        // Find and return a single record for a particular boundary.
        $id = (int)$this->get('id');

        // Validate the id.
        if (empty($id)) {
            // Invalid id, set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the boundary from the array, using the id as key for retrieval.
        // Usually a model is to be used for this.
        $boundary = $this->boundaries_model->_get_by_id($id);

        if (empty($boundary)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($boundary, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function create_boundary()
    {
        $data = [
            'branch_id' => 1,
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
            $this->boundaries_model->_create($data);
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
        'updated_by' => $this->put('user_id'),
        'dt_updated' => date('Y-m-d H:i:s')
    ];

    // Find and return a single record for a particular boundary.
    $id = (int)$this->get('id');

    // Validate the id.
    if (empty($id)) {
        // Invalid id, set the response and exit.
        $this->response([
            'status' => FALSE,
            'message' => 'Bad Request'
        ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
    }

    // Get the boundary from the array, using the id as key for retrieval.
    // Usually a model is to be used for this.
    $boundary = $this->boundaries_model->_get_by_id($id);

    if (empty($boundary)) {
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
        $this->boundaries_model->_update($id, $data);

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

        // Find and return a single record for a particular boundary.
        $id = (int)$this->get('id');

        // Validate the id.
        if (empty($id)) {
            // Invalid id, set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the boundary from the array, using the id as key for retrieval.
        // Usually a model is to be used for this.
        $boundary = $this->boundaries_model->_get_by_id($id);

        if (empty($boundary)) {
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
            $this->boundaries_model->_update($id, $data);

            $this->response([
                'status' => TRUE,
                'message' => 'Updated'
            ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function hard_delete_delete()
    {
        // Find and return a single record for a particular boundary.
        $id = (int)$this->get('id');

        // Validate the id.
        if (empty($id)) {
            // Invalid id, set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the boundary from the array, using the id as key for retrieval.
        // Usually a model is to be used for this.
        $boundary = $this->boundaries_model->_get_by_id($id);

        if (empty($boundary)) {
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
            $this->boundaries_model->_hard_delete($id);

            // Set the response and exit
            $this->set_response([
                'status' => TRUE,
                'message' => 'Deleted'
            ], REST_Controller::HTTP_NO_CONTENT); // NO_CONTENT (204) being the HTTP response code
        }
    }
}

/* End of file: Boundaries.php */
/* Location: application/controller/basilica/Boundaries.php */