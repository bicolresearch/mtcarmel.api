<?php

/*
    Filename    : Service_mass_request.php
    Location    : application/controllers/Service_mass_request.php
    Purpose     : Service mass request controller
    Created     : 07/29/2019 14:37:10 by Scarlet Witch
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Service_mass_request extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // mass request from a data store e.g. database
        $service_mass_request = [
           'service_subtypes' => $this->sub_modules_model->_get_by_id(3),
           'form_fields' => $this->service_references_model->_get_all_mass_request()     
        ];

        $id = $this->get('id');

        // If the id parameter doesn't exists return all the mass request
        if (empty($id)) {
            // Check if the mass request data store contains mass request (in case the database result returns NULL)
            if (empty($service_mass_request)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($service_mass_request,REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
        } else {
            // Set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
    }


    
}