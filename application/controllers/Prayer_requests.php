<?php

/*
    Filename    : Prayer_requests.php
    Location    : application/controllers/Prayer_requests.php
    Purpose     : Prayer requests controller
    Created     : 07/30/2019 15:53:10 by Scarlet Witch
    Updated     : 11/07/2019 12:21:55 by Scarlet Witch
    Changes     : deleted status_id in create
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Prayer_requests extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {        
        $branch_id = (int)$this->get('branch_id');             
        $role_id = (int)$this->get('role_id');   
        $user_id = (int)$this->get('user_id');

        if ($role_id == 1 && $role_id !== 2 && $role_id !== 3)  {
            $get_all = $this->prayer_requests_model->_get_all($branch_id);          //Admin
        } elseif ($role_id == 2 && $role_id !== 1 &&  $role_id !== 3) {
            $get_all = $this->prayer_requests_model->_get_by_user_id($user_id);     //User
        } elseif ($role_id == 3 && $role_id !== 1 && $role_id !== 2) {
            $get_all = $this->prayer_requests_model->_get_by_priest($branch_id);    //Priest
        }

        if(empty($branch_id) && empty($role_id)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else {
            if (empty($get_all)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            } else {
                $this->response($get_all, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            }       
        }        
        
    }

    public function prayer_request_get()
    {
        $branch_id = (int)$this->get('branch_id');
        $id = (int)$this->get('id');

        if(empty($branch_id) && empty($id)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        $get_by_id = $this->prayer_requests_model->_get_by_id($branch_id, $id);

        if (empty($get_by_id)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($get_by_id, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function create_post()
    {
        $data = [
            'branch_id' => $this->post('branch_id'),    
            'module_id' => $this->post('module_id'),
            'sub_module_id' => $this->post('sub_module_id'),
            'prayer' => $this->post('prayer'),
            'created_by' => $this->post('user_id'),
            'dt_created' => date('Y-m-d H:i:s')
        ];

        if (in_array(null, $data, true)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request',
                'data' => $data
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else {
            $this->prayer_requests_model->_create($data);
            $this->response([
                'status' => TRUE,
                'message' => 'Created'
            ], REST_Controller::HTTP_CREATED); // CREATED (201) being the HTTP response code
        }
    }

    public function update_put()
    {
        $data = [
            'status_id' => $this->put('status_id'),
            'prayer' => $this->put('prayer'),
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
            $this->prayer_requests_model->_update($id, $data);
            $this->response([
                'status' => TRUE,
                'message' => 'Updated'
            ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function soft_delete_put()
    {
        $data = [
            'is_deleted' => 1,
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
            $this->prayer_requests_model->_update($id, $data);
            $this->response([
                'status' => TRUE,
                'message' => 'Updated'
            ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function hard_delete_delete()
    {
        $id = (int)$this->get('id');

        if (empty($id)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        } else {
            $this->prayer_requests_model->_hard_delete($id);
            $this->set_response([
                'status' => TRUE,
                'message' => 'Deleted'
            ], REST_Controller::HTTP_NO_CONTENT); // NO_CONTENT (204) being the HTTP response code
        }
    }
}