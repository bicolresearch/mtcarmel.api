<?php

/*
    Filename    : Contact.php
    Location    : application/controllers/Contact.php
    Purpose     : Contact controller
    Created     : 06/27/2019 22:16:38 by Scarlet Witch
    Updated     : 10/24/2019 21:57:48 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class contact extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        $branch_id = (int)$this->get('branch_id');

        if(empty($branch_id)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        $get_by_branch_id = $this->contact_model->_get_by_branch_id($branch_id);

        if (empty($get_by_branch_id)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($get_by_branch_id, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function update_put()
    {
        $data = [
            'name' => $this->put('name'),
            'description' => $this->put('description'),
            'address1' => $this->put('address1'),            
            'address2' => $this->put('address2'),
            'city' => $this->put('city'),
            'province' => $this->put('province'),
            'country' => $this->put('country'),
            'landline' => $this->put('landline'),
            'mobile' => $this->put('mobile'),
            'email' => $this->put('email'),
            'updated_by' => $this->put('user_id'),
            'dt_updated' => date('Y-m-d H:i:s')
        ];

        $id = (int)$this->get('id');

        if (empty($id)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        if (in_array(null, $data, true)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else {
            $this->contact_model->_update($id, $data);
            $this->response([
                'status' => TRUE,
                'message' => 'Updated'
            ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }
}