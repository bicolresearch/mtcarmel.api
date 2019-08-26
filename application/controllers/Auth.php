<?php

/*
    Filename    : Auth.php
    Location    : application/controllers/Auth.php
    Purpose     : Auth controller
    Created     : 07/09/2019 09:52:03 by Spiderman
    Updated     : 08/25/2019 13:35:07 by Spiderman
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
        // Get the username and password parameters
        $username = (string)$this->get('username');
        $password = (string)$this->get('password');

        // Check if the parameters are empty or null
        if (empty($username) && empty($password)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the user by username and password from a model
        $user = $this->users_model->_get_by_username($username, $password);

        // Check if data is empty or null
        if (empty($user)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'User not found. Please double check your username and password.'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($user, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }
}