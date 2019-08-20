<?php

/*
    Filename    : Ads.php
    Location    : application/controllers/Ads.php
    Purpose     : Ads controller
    Created     : 06/2/2019 16:14:47 by Scarlet Witch
    Updated     : 08/20/2019 15:01:16 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Ads extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // Get the data from a model
        $get_all = $this->ads_model->_get_all();

        // Get the type_id parameter
        $type_id = (int)$this->get('type_id');

        // Check if type_id is empty or null
        if(empty($type_id)) {
            // Check if data returns empty or null
            if (empty($get_all)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($get_all, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
        }

        // Get the data by type_id from a model
        $get_by_id = $this->ads_model->_get_by_type($type_id);

        // Check if data returns empty or null
        if (empty($get_by_id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            // Set the response and exit
            $this->response($get_by_id, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function ad_get()
    {
        // Get the id parameter
        $id = (int)$this->get('id');

        // Check if id parameter is empty or null
        if (empty($id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the data by id from a model
        $get_by_id = $this->ads_model->_get_by_id($id);

        // Check if data returns empty or null
        if (empty($get_by_id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            // Set the response and exit
            $this->response($get_by_id, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function create_post()
    {
        $data = [
            'branch_id' => $this->post('branch_id'),
            'name' => $this->post('name'),
            'description' => $this->post('description'),
            'media_id' => $this->post('media_id'),
            'type_id' => $this->post('type_id'),
            'url' => $this->post('url'),
            'expiration' => $this->post('expiration'),
            'created_by' => $this->post('user_id'),
            'dt_created' => date('Y-m-d H:i:s')
        ];

        // Check the data array if it contains null values
        if (in_array(null, $data, true)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else {
            // If data array does not contains null values, create new resource to database
            $this->ads_model->_create($data);
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
            'type_id' => $this->put('type_id'),
            'url' => $this->put('url'),
            'expiration' => $this->put('expiration'),
            'updated_by' => $this->put('user_id'),
            'dt_updated' => date('Y-m-d H:i:s')
        ];

        // Get the id parameter
        $id = (int)$this->get('id');

        // Check if id parameter is empty or null
        if (empty($id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the data by id from a model
        $get_by_id = $this->ads_model->_get_by_id($id);

        // Check if data returns empty or null
        if (empty($get_by_id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }

        // Check the data array if it contains null values
        if (in_array(null, $data, true)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else {
            // If data array does not contains null values, update the resource
            $this->ads_model->_update($id, $data);
            // Set the response and exit
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

        // Check if id parameter is empty or null
        if (empty($id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the data by id from a model
        $get_by_id = $this->ads_model->_get_by_id($id);

        // Check if data returns empty or null
        if (empty($get_by_id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }

        // Check the data array if it contains null values
        if (in_array(null, $data, true)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else {
            // If data array does not contains null values, update the resource
            $this->ads_model->_update($id, $data);
            // Set the response and exit
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

        // Check if id parameter is empty or null
        if (empty($id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the data by id from a model
        $get_by_id = $this->ads_model->_get_by_id($id);

        // Check if data returns empty or null
        if (empty($get_by_id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }

        // Check the data array if it contains null values
        if (empty($id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else {
            // Delete the resource
            $this->ads_model->_hard_delete($id);
            // Set the response and exit
            $this->set_response([
                'status' => TRUE,
                'message' => 'Deleted'
            ], REST_Controller::HTTP_NO_CONTENT); // NO_CONTENT (204) being the HTTP response code
        }
    }
}