<?php

/*
    Filename    : Service_confraternity.php
    Location    : application/controllers/Service_confraternity.php
    Purpose     : Service confraternity controller
    Created     : 07/25/2019 19:05:13 by Scarlet Witch
    Updated     : 08/01/2019 12:28:23 by Scarlet Witch
    Changes     : renamed service_subtypes
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
        // Service confraternity from a data store e.g. database
        $service_confraternity = [
           'sub_module' => $this->sub_modules_model->_get_by_id(1),
           'form_fields' => $this->service_references_model->_get_all_confraternity()     
        ];

        $id = $this->get('id');

        // If the id parameter doesn't exists return all the service confraternity
        if (empty($id)) {
            // Check if the Service confraternity data store contains service confraternity (in case the database result returns NULL)
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


    
}