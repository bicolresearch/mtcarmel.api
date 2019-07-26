<?php

/*
    Filename    : Service_confraternity.php
    Location    : application/controllers/Service_confraternity.php
    Purpose     : Service_confraternity controller
    Created     : 07/25/2019 19:05:13 by Scarlet Witch
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Service_confraternity extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // Service_confraternity from a data store e.g. database
        $service_confraternity = [
            'service_subtypes' => $this->sub_modules_model->_get_all(),
            'form_fields' => $this->service_confraternity_model->_get_all()
        ];

        $id = $this->get('id');

        // If the id parameter doesn't exists return all the service_confraternity
        if (empty($id)) {
            // Check if the Service_confraternity data store contains service_confraternity (in case the database result returns NULL)
            if (empty($service_confraternity)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($service_confraternity,REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
        } else {
            // Set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
    }

    public function service_confraternity_get()
    {
        // Find and return a single record for a particular service_confraternity.
        $id = (int)$this->get('id');

        // Validate the id.
        if (empty($id)) {
            // Invalid id, set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the service_confraternity from the array, using the id as key for retrieval.
        // Usually a model is to be used for this.
        $service_confrat = $this->service_confraternity_model->_get_by_id($id);

        if (empty($service_confrat)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($service_confrat, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    
}