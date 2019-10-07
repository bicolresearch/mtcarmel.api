<?php

/*
    Filename    : Service_funeral_chapels.php
    Location    : application/controllers/Service_funeral_chapels.php
    Purpose     : Service funeral chapels controller
    Created     : 07/29/2019 15:28:27 by Scarlet Witch
    Updated     : 10/06/2019 14:46:44 by Scarlet Witch
    Changes     : renamed forms, added branch id, removed id, added sub_module_id
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Service_funeral_chapels extends REST_Controller
{
    private $sub_module_id;

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->sub_module_id = 14;
    }

    public function index_get()
    {               
        $branch_id = (int)$this->get('branch_id'); 

        $sub_module = $this->service_references_model->_get_sub_modules_by_id($branch_id, $this->sub_module_id);

        $service_funeral_chapels = [            
            'sub_module' =>  $this->service_references_model->_get_sub_modules_by_id($branch_id, $this->sub_module_id),
            'form_fields' => $this->service_references_model->_get_all_funeral_chapels($branch_id)     
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
                if (empty($service_funeral_chapels)) {
                    // Set the response and exit
                    $this->response([
                        'status' => FALSE,
                        'message' => 'Not Found'
                    ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
                } else {
                    // Set the response and exit
                    $this->response($service_funeral_chapels,REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
                }
            }
        } 
        
    }

    
}