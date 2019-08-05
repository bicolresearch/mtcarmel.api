<?php

/*
    Filename    : Barangay.php
    Location    : application/controllers/Barangay.php
    Purpose     : Barangay controller
    Created     : 07/30/2019 15:14:39 by Scarlet Witch
    Updated     : 08/05/2019 12:34:46 by Scarlet Witch
    Changes     : added barangay by cityid
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Barangay extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // Get the data from the database
        $getAll = $this->selection_references_model->_get_all_barangay();

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

    public function barangay_by_cityid_get()
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
        $barangay_by_cityid = $this->selection_references_model->_get_all_barangay_by_cityid($id);

        if (empty($barangay_by_cityid)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($barangay_by_cityid, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }
    

    
}