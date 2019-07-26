<?php

/*
    Filename    : Sub_modules.php
    Location    : application/controllers/Sub_modules.php
    Purpose     : Sub modules controller
    Created     : 07/26/2019 10:48:51 by Scarlet Witch
    Updated     : 
    Changes     :
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Sub_modules extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // Modules from a data store e.g. database
        $sub_modules = $this->sub_modules_model->_get_all();

        $id = $this->get('id');

        // If the id parameter doesn't exists return all the modules
        if (empty($id)) {
            // Check if the modules data store contains modules (in case the database result returns NULL)
            if (empty($sub_modules)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($sub_modules, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
        } else {
            // Set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
    }

    public function sub_modules_get()
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
        $sub_module = $this->sub_modules_model->_get_by_id($id);

        if (empty($sub_module)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($sub_module, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }
    
}