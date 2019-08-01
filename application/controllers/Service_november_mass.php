<?php

/*
    Filename    : Service_november_mass.php
    Location    : application/controllers/Service_november_mass.php
    Purpose     : Service november mass controller
    Created     : 07/29/2019 15:40:14 by Scarlet Witch
    Updated     : 08/01/2019 12:36:35 by Scarlet Witch
    Changes     : renamed service_subtypes
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Service_november_mass extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // november mass from a data store e.g. database
        $service_november_mass = [
           'sub_module' => $this->sub_modules_model->_get_by_id(16),
           'form_fields' => $this->service_references_model->_get_all_november_mass()     
        ];

        $id = $this->get('id');

        // If the id parameter doesn't exists return all the november mass
        if (empty($id)) {
            // Check if the november mass data store contains november mass (in case the database result returns NULL)
            if (empty($service_november_mass)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($service_november_mass,REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
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