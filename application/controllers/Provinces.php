<?php

/*
    Filename    : Provinces.php
    Location    : application/controllers/Provinces.php
    Purpose     : Provinces controller
    Created     : 08/30/2019 23:45:44 by Spiderman
    Updated     : 09/02/2019 20:38:10 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Provinces extends REST_Controller
{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        $get_all = $this->provinces_model->_get_all();

        $q = (string)$this->get('q');

        if (empty($q)) {
            if (empty($get_all)) {
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                $this->response($get_all, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
        }

        $get_by_name = $this->provinces_model->_get_by_name($q);

        if (empty($get_by_name)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($get_by_name, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }
}