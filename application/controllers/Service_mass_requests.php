<?php

/*
    Filename    : Service_mass_requests.php
    Location    : application/controllers/Service_mass_requests.php
    Purpose     : Service mass requests controller
    Created     : 07/29/2019 14:37:10 by Scarlet Witch
    Updated     : 10/06/2019 14:15:14 by Scarlet Witch
    Changes     : renamed forms, added branch id, removed id, added sub_module_id
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Service_mass_requests extends REST_Controller
{
    private $sub_module_id;

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->sub_module_id = 3;
    }

    public function index_get()
    {               
        $branch_id = (int)$this->get('branch_id'); 

        $sub_module = $this->service_references_model->_get_sub_modules_by_id($branch_id, $this->sub_module_id);

        $service_mass_requests = [            
            'sub_module' =>  $this->service_references_model->_get_sub_modules_by_id($branch_id, $this->sub_module_id),
            'form_fields' => $this->service_references_model->_get_all_mass_requests($branch_id)     
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
                if (empty($service_mass_requests)) {
                    // Set the response and exit
                    $this->response([
                        'status' => FALSE,
                        'message' => 'Not Found'
                    ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
                } else {
                    // Set the response and exit
                    $this->response($service_mass_requests,REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
                }
            }
        } 
        
    }

    
}