<?php

/*
    Filename    : Cities_model.php
    Location    : application/models/Cities_model.php
    Purpose     : Cities model
    Created     : 09/02/2019 20:03:33 by Spiderman
    Updated     : 09/02/2019 20:27:57 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Cities_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all()
    {
        $this->db
            ->select(
                'city_code AS id,' .
                'name AS text')
            ->from('city')
            ->where('is_deleted', 0)
            ->order_by('name', 'ASC');

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _get_by_name($name)
    {
        $this->db
            ->select(
                'city_code AS id,' .
                'name AS text')
            ->from('city')
            ->where('is_deleted', 0)
            ->like('name', $name);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }
}