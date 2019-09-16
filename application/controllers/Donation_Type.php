<?php

/*
    Filename    : Donation_Type.php
    Location    : application/controllers/Donation_Type.php
    Purpose     : Donation Type controller
    Created     : 07/01/2019 23:27:59 by Scarlet Witch 
    Updated     : 09/16/2019 23:27:41 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Donation_type extends REST_Controller
{
    private $group_id;
    private $module_id;
    private $sub_module_id;

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->group_id = 21;
        $this->module_id = null;
        $this->sub_module_id = null;
    }

    public function index_get()
<<<<<<< HEAD
    {
        $get_all = $this->global_reference_model->_get_all($this->group_id, $this->module_id, $this->sub_module_id);
=======
    {        
        $get_all = $this->global_reference_model->_get_all_donation_type($this->group_id);
>>>>>>> 161c11e3929c571edb4821a405d3dfddf8e4579d

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