<?php

/*
    Filename    : Service_certification.php
    Location    : application/controllers/Service_certification.php
    Purpose     : Service certification controller
    Created     : 07/29/2019 14:45:24 by Scarlet Witch
    Updated     : 08/01/2019 12:40:22 by Scarlet Witch
    Changes     : renamed service_subtypes
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Service_certification extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // liturgical from a data store e.g. database
        $Service_certification = [
           'sub_module' => $this->sub_modules_model->_get_by_id(5),
           'form_fields' => $this->service_references_model->_get_all_certification()     
        ];

        $id = $this->get('id');

        // If the id parameter doesn't exists return all the liturgical
        if (empty($id)) {
            // Check if the liturgical data store contains liturgical (in case the database result returns NULL)
            if (empty($Service_certification)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($Service_certification,REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
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