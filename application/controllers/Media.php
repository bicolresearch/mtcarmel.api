<?php

/*
    Filename    : Media.php
    Location    : application/controllers/Media.php
    Purpose     : Media controller
    Created     : 07/22/2019 15:22:13 by Spiderman
    Updated     : 09/16/2019 18:37:14 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Media extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        $branch_id = (int)$this->get('branch_id');

        $get_all = $this->media_model->_get_all($branch_id);

        if(empty($branch_id)) {
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

    public function medium_get()
    {
        $branch_id = (int)$this->get('branch_id');
        $id = (int)$this->get('id');

        if(empty($branch_id) && empty($id)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        $get_by_id = $this->media_model->_get_by_id($branch_id, $id);

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
            'name' => $this->post('name'),
            'description' => $this->post('description'),
            'file_name' => $this->post('file_name'),
            'file_type' => $this->post('file_type'),
            'file_ext' => $this->post('file_ext'),
            'file_size' => $this->post('file_size'),
            'file_path' => $this->post('file_path'),
            'full_path' => $this->post('full_path'),
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
            // Convert base64 string to an image file
            $this->base64_to_image($this->post('base64'), $data['full_path']);
            $this->media_model->_create($data);
            $this->response([
                'status' => TRUE,
                'message' => 'Created'
            ], REST_Controller::HTTP_CREATED); // CREATED (201) being the HTTP response code
        }
    }

    public function update_put()
    {
        $data = [
            'name' => $this->put('name'),
            'description' => $this->put('description'),
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
            $this->media_model->_update($id, $data);
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
            // Set the response and exit
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
            $this->media_model->_update($id, $data);
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
            $this->media_model->_hard_delete($id);
            $this->set_response([
                'status' => TRUE,
                'message' => 'Deleted'
            ], REST_Controller::HTTP_NO_CONTENT); // NO_CONTENT (204) being the HTTP response code
        }
    }

    // TODO: This should be in the custom helper
    private function base64_to_image($base64_string, $output_file) {
        $file = fopen($output_file, "wb");
    
        $data = explode(',', $base64_string);
    
        fwrite($file, base64_decode($data[1]));
        fclose($file);
    
        return $output_file;
    }
}