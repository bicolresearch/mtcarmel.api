<?php

/*
    Filename    : Service_liturgical.php
    Location    : application/controllers/Service_liturgical.php
    Purpose     : Service liturgical controller
    Created     : 07/29/2019 14:42:05 by Scarlet Witch
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Service_liturgical extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // liturgical from a data store e.g. database
        $service_liturgical = [
           'service_subtypes' => $this->sub_modules_model->_get_by_id(4),
           'form_fields' => $this->service_references_model->_get_all_liturgical_service()     
        ];

        $id = $this->get('id');

        // If the id parameter doesn't exists return all the liturgical
        if (empty($id)) {
            // Check if the liturgical data store contains liturgical (in case the database result returns NULL)
            if (empty($service_liturgical)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($service_liturgical,REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
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