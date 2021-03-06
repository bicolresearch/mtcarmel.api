<?php

/*
    Filename    : Auth.php
    Location    : application/controllers/Auth.php
    Purpose     : Auth controller
    Created     : 07/09/2019 09:52:03 by Spiderman
    Updated     : 10/25/2019 15:11:03 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Auth extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function login_get()
    {
        $branch_id = (int)$this->get('branch_id');
        $username = (string)$this->get('username');
        $password = (string)$this->get('password');

        if (empty($branch_id) && empty($username) && empty($password)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        $user = $this->users_model->_get_by_username($branch_id, $username, $password);

        if (empty($user)) {
            $this->response([
                'status' => FALSE,
                'message' => 'User not found. Please double check your username and password.'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($user, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }
}