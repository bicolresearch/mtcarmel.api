<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Boundaries_Model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all()
    {
        $this->db
            ->select('*')
            ->from('Posts');
        $query = $this->db->get();
        return ($query->num_rows() > 0) ? $query->result_array() : false;
    }

    public function _get_by_id($id)
    {
        $this->db
            ->select('*')
            ->from('Posts')
            ->where('id', $id);
        $query = $this->db->get();
        return ($query->num_rows() > 0) ? $query->row() : false;
    }
}

/* 
 * end of file 
 * location: models/Boundaries_model.php
 */