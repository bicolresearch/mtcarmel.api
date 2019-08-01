<?php

/*
    Filename    : Service_prayer_request.php
    Location    : application/controllers/Service_prayer_request.php
    Purpose     : Service_prayer_request controller
    Created     : 07/29/2019 14:19:42 by Scarlet Witch
    Updated     : 08/01/2019 12:29:03 by Scarlet Witch
    Changes     : renamed subtype
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Service_prayer_request extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // Service prayer request from a data store e.g. database
        $service_prayer_request = [
           'service_subtype' => $this->sub_modules_model->_get_by_id(2),
           'form_fields' => $this->service_references_model->_get_all_prayer_request()     
        ];

        $id = $this->get('id');

        // If the id parameter doesn't exists return all the service prayer request
        if (empty($id)) {
            // Check if the service prayer request data store contains service prayer request (in case the database result returns NULL)
            if (empty($service_prayer_request)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($service_prayer_request,REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
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