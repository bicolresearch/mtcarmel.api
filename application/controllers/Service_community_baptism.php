<?php

/*
    Filename    : Service_community_baptism.php
    Location    : application/controllers/Service_community_baptism.php
    Purpose     : Service community baptism controller
    Created     : 07/29/2019 14:51:18 by Scarlet Witch
    Updated     : 08/01/2019 12:39:54 by Scarlet Witch
    Changes     : renamed service_subtypes
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Service_community_baptism extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // community baptism from a data store e.g. database
        $service_community_baptism = [
           'sub_module' => $this->sub_modules_model->_get_by_id(7),
           'form_fields' => $this->service_references_model->_get_all_community_baptism()     
        ];

        $id = $this->get('id');

        // If the id parameter doesn't exists return all the community baptism
        if (empty($id)) {
            // Check if the community baptism data store contains community baptism (in case the database result returns NULL)
            if (empty($service_community_baptism)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($service_community_baptism,REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
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