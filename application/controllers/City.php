<?php

/*
    Filename    : City.php
    Location    : application/controllers/City.php
    Purpose     : City controller
    Created     : 07/31/2019 11:08:56 by Scarlet Witch
    Updated     : 08/05/2019 11:55:28 by Scarlet Witch
    Changes     : added city by provinceid
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class City extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // Get the data from the database
        $getAll = $this->selection_references_model->_get_all_city();

        // Get the id parameter
        $id = (int)$this->get('id');

        // Validate id
        if (empty($id)) {
            // In case the database result returns NULL
            if (empty($getAll)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($getAll, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
    }

    public function city_by_provinceid_get()
    {
        // Find and return a single record for a particular ads.
        $id = (int)$this->get('id');

        // Validate the id.
        if (empty($id)) {
            // Invalid id, set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the ads from the array, using the id as key for retrieval.
        // Usually a model is to be used for this.
        $city_by_provinceid = $this->selection_references_model->_get_all_city_by_provinceid($id);

        if (empty($city_by_provinceid)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($city_by_provinceid, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }
    
}