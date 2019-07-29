<?php

/*
    Filename    : Service_events_FMHH_venue.php
    Location    : application/controllers/Service_events_FMHH_venue.php
    Purpose     : ServiceFather Mark Horan Hall - Venue controller
    Created     : 07/29/2019 15:40:14 by Scarlet Witch
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Service_events_FMHH_venue extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        //Father Mark Horan Hall - Venue from a data store e.g. database
        $service_events_FMHH_venue = [
           'service_subtypes' => $this->sub_modules_model->_get_by_id(17),
           'form_fields' => $this->service_references_model->_get_all_events_fmhh_venue()     
        ];

        $id = $this->get('id');

        // If the id parameter doesn't exists return all theFather Mark Horan Hall - Venue
        if (empty($id)) {
            // Check if theFather Mark Horan Hall - Venue data store containsFather Mark Horan Hall - Venue (in case the database result returns NULL)
            if (empty($service_events_FMHH_venue)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($service_events_FMHH_venue,REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
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