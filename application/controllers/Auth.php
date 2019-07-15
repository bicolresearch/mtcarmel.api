<?php

/*
    Filename    : Auth.php
    Location    : application/controllers/Auth.php
    Purpose     : Auth controller
    Created     : 07/09/2019 09:52:03 by Spiderman
    Updated     : 07/15/2019 11:34:15 by Spiderman
    Changes     : Move other functions to users controller
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
        // Find and return a single record for a particular user.
        $username = (string)$this->get('username');
        $password = (string)$this->get('password');

        // Validate the parameters.
        if (empty($username) && empty($password)) {
            // Invalid parameters, set the response and exit.
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the user from the array, using the username and password as key for retrieval.
        $user = $this->users_model->_get_by_username($username, $password);

        if (empty($user)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($user, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }
}