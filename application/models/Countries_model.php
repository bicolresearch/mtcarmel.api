<?php

/*
    Filename    : Countries_model.php
    Location    : application/models/Countries_model.php
    Purpose     : Countries model
    Created     : 08/31/2019 00:24:28 by Spiderman
    Updated     : 09/02/2019 20:31:12 by Spiderman
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Countries_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all()
    {
        $this->db
            ->select(
                'country_code AS id,' .
                'name AS text')
            ->from('country')
            ->where('is_deleted', 0)
            ->order_by('name', 'ASC');

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _get_by_name($name)
    {
        $this->db
            ->select(
                'country_code AS id,' .
                'name AS text')
            ->from('country')
            ->where('is_deleted', 0)
            ->like('name', $name);

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }
}