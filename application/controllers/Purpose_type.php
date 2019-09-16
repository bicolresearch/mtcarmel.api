<?php

/*
    Filename    : Purpose_type.php
    Location    : application/controllers/Purpose_type.php
    Purpose     : Purpose type controller
    Created     : 09/16/2019 22:55:24 by Spiderman
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Purpose_type extends REST_Controller
{

    private $group_id;
    private $module_id;
    private $sub_module_id;

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->group_id = 14;
        $this->module_id = 5;
        $this->sub_module_id = 3;
    }

    public function index_get()
    {
        $get_all = $this->global_reference_model->_get_all($this->group_id, $this->module_id, $this->sub_module_id);

        $id = (int)$this->get('id');

        if (empty($id)) {
            if (empty($get_all)) {
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                $this->response($get_all, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
        }

        $get_by_id = $this->global_reference_model->_get_by_id($id, $this->group_id, $this->module_id, $this->sub_module_id);

        if (empty($get_by_id)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($get_by_id, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }
}