<?php

/*
    Filename    : Contact_details.php
    contact    : application/controllers/Contact_details.php
    Purpose     : Contact_details controller
    Created     : 07/24/2019 15:33:15 by Scarlet Witch
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Contact_details extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // Locations from a data store e.g. database
        $contact_details = $this->contact_details_model->_get_all();

        $id = $this->get('id');

        // If the id parameter doesn't exists return all the locations
        if (empty($id)) {
            // Check if the locations data store contains locations (in case the database result returns NULL)
            if (empty($contact_details)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($contact_details, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
        } else {
            // Set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
    }

    public function contact_details_get()
    {
        // Find and return a single record for a particular location.
        $id = (int)$this->get('id');

        // Validate the id.
        if (empty($id)) {
            // Invalid id, set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the location from the array, using the id as key for retrieval.
        // Usually a model is to be used for this.
        $contact_detail = $this->contact_details_model->_get_by_id($id);

        if (empty($contact_detail)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($contact_detail, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    
}