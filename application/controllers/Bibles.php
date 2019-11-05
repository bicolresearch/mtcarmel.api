<?php

/*
    Filename    : Bibles.php
    Location    : application/controllers/Bibles.php
    Purpose     : Bibles controller
    Created     : 10/22/2019 16:02:07 by Scarlet Witch
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) exit('No direct script access allowed');

use Restserver\Libraries\REST_Controller;

/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/Format.php';

class Bibles extends REST_Controller
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
    }

    public function index_get()
    {
        // Get the data from the database
        $get_all = $this->bibles_model->_get_all();

        
        $get_all = [            
            'bible_version' =>  $this->bibles_model->_get_version(),
            'bible_verse' => $this->bibles_model->_get_all()
        ];    

        // Get the id parameter
        $id = (int)$this->get('id');

        // Validate id
        if (empty($id)) {
            // In case the database result returns NULL
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
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }
    }

    public function bible_get()
    {
        // Get the id parameter
        $id = (int)$this->get('id');

        // Validate the id
        if (empty($id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the data from the array, using the id as key for retrieval
        $getById = $this->funeral_service_model->_get_by_id($id);

        if (empty($getById)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($getById, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function bible_book_get()
    {
        // Get the id parameter
        $book_id = (int)$this->get('book_id');

        // Validate the id
        if (empty($book_id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the data from the array, using the id as key for retrieval
        $getById = $this->bibles_model->_get_by_book_id($book_id);

        if (empty($getById)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($getById, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function bible_chapter_get()
    {
        // Get the id parameter
        $chapter_id = (int)$this->get('chapter_id');

        // Validate the id
        if (empty($chapter_id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the data from the array, using the id as key for retrieval
        $getById = $this->bibles_model->_get_by_chapter_id($chapter_id);

        if (empty($getById)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($getById, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function bible_verse_get()
    {
        // Get the id parameter
        $verse_id = (int)$this->get('verse_id');

        // Validate the id
        if (empty($verse_id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the data from the array, using the id as key for retrieval
        $getById = $this->bibles_model->_get_by_verse_id($verse_id);

        if (empty($getById)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($getById, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function bible_book_chapter_get()
    {
        // Get the id parameter        
        $book_id = (int)$this->get('book_id');        
        $chapter_id = (int)$this->get('chapter_id');

        // Validate the id
        if (empty($book_id) && empty($chapter_id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the data from the array, using the id as key for retrieval
        $get_all = [            
            'bible_version' =>  $this->bibles_model->_get_version(),
            'bible_verse' => $this->bibles_model->_get_by_book_chapter($book_id,$chapter_id)
        ];    

        if (empty($get_all)) {
            $this->response([
                'status' => FALSE,
                'message' => 'Not Found'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        } else {
            $this->response($get_all, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        }
    }

    public function bible_book_chapter_verse_get()
    {
        // Get the id parameter        
        $book_id = (int)$this->get('book_id');        
        $chapter_id = (int)$this->get('chapter_id');
        $verse_id = (int)$this->get('verse_id');

        // Validate the id
        if (empty($book_id) && empty($chapter_id) && empty($verse_id)) {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Bad Request'
            ], REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        // Get the data from the array, using the id as key for retrieval
        $get_all = [            
            'bible_version' =>  $this->bibles_model->_get_version(),
            'bible_verse' => $this->bibles_model->_get_by_book_chapter_verse($book_id,$chapter_id,$verse_id)
        ];    

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