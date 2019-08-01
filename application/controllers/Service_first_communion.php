<?php

/*
    Filename    : Service_first_communion.php
    Location    : application/controllers/Service_first_communion.php
    Purpose     : Service first communion controller
    Created     : 07/29/2019 14:54:58 by Scarlet Witch
    Updated     : 08/01/2019 12:38:52 by Scarlet Witch
    Changes     : renamed service_subtypes
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Service_first_communion extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // first communion from a data store e.g. database
        $service_first_communion = [
           'sub_module' => $this->sub_modules_model->_get_by_id(9),
           'form_fields' => $this->service_references_model->_get_all_first_communion()     
        ];

        $id = $this->get('id');

        // If the id parameter doesn't exists return all the first communion
        if (empty($id)) {
            // Check if the first communion data store contains first communion (in case the database result returns NULL)
            if (empty($service_first_communion)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($service_first_communion,REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
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