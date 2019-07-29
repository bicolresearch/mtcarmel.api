<?php

/*
    Filename    : Service_confirmation.php
    Location    : application/controllers/Service_confirmation.php
    Purpose     : Service confirmation controller
    Created     : 07/29/2019 15:17:58 by Scarlet Witch
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Service_confirmation extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // confirmation from a data store e.g. database
        $service_confirmation = [
           'service_subtypes' => $this->sub_modules_model->_get_by_id(11),
           'form_fields' => $this->service_references_model->_get_all_confirmation()     
        ];

        $id = $this->get('id');

        // If the id parameter doesn't exists return all the confirmation
        if (empty($id)) {
            // Check if the confirmation data store contains confirmation (in case the database result returns NULL)
            if (empty($service_confirmation)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($service_confirmation,REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
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