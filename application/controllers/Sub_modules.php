<?php

/*
    Filename    : Sub_modules.php
    Location    : application/controllers/Sub_modules.php
    Purpose     : Sub modules controller
    Created     : 07/26/2019 10:48:51 by Scarlet Witch
    Updated     : 11/06/2019 17:46:48 by Scarlet Witch
    Changes     : updated the function sub_module - add the formfields (from service_reference_model ie service_certifications)
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Sub_modules extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        $branch_id = (int)$this->get('branch_id');

        // Modules from a data store e.g. database
        $get_all = $this->sub_modules_model->_get_all($branch_id);

        // If the id parameter doesn't exists return all the modules
        if(empty($branch_id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else {
            // Check if the modules data store contains modules (in case the database result returns NULL)
            if (empty($get_all)) {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response($get_all, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }
        }
    }

    public function sub_module_get()
    {
        $branch_id = (int)$this->get('branch_id'); 

        // Find and return a single record for a particular module.
        $id = (int)$this->get('id');

        $sub_module = $this->sub_modules_model->_get_sub_modules_by_id($branch_id, $id);

        $get_by_id = [            
            'sub_module' =>  $this->sub_modules_model->_get_sub_modules_by_id($branch_id, $id),
            'form_fields' => $this->sub_modules_model->_get_service_references($branch_id, $id)     
        ];    

        if (empty($branch_id)) {
            // Invalid id, set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else{
            if ($sub_module === FALSE) {
                $this->response([
                    'status' => FALSE,
                    'message' => 'Not Found'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }   
            else {
                if (empty($get_by_id)) {
                    // Set the response and exit
                    $this->response([
                        'status' => FALSE,
                        'message' => 'Not Found'
                    ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
                } else {
                    // Set the response and exit
                    $this->response($get_by_id,REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
                }
            }
        } 
        
    }
    
}