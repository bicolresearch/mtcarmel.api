<?php

/*
    Filename    : Service_funeral_service.php
    Location    : application/controllers/Service_funeral_service.php
    Purpose     : Service Funeral Service controller
    Created     : 07/29/2019 14:54:58 by Scarlet Witch
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Service_funeral_service extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // Funeral Service from a data store e.g. database
        $service_funeral_service = [
           'service_subtypes' => $this->sub_modules_model->_get_by_id(13),
           'form_fields' => $this->service_references_model->_get_all_funeral_service()     
        ];

        $id = $this->get('id');

        // If the id parameter doesn't exists return all the Funeral Service
        if (empty($id)) {
            // Check if the Funeral Service data store contains Funeral Service (in case the database result returns NULL)
            if (empty($service_funeral_service)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($service_funeral_service,REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
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