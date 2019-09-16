<?php

/*
    Filename    : Modules_model.php
    Location    : application/models/Modules_model.php
    Purpose     : Modules model
    Created     : 6/27/2019 by Scarlet Witch
    Updated     : 09/11/2019 16:39:41 by Scarlet Witch
    Changes     : removed sub_modules (url) on get_all and get_by_id,
                  added sub_modules (id) on get_all and get_by_id,
                  added branch_id
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Modules_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function _get_all($branch_id)
    {
        $this->datatables
            ->select(
                't1.id,' .
                't1.branch_id,' .
                't1.name,' .
                't1.description,' .
                't2.full_path as cover_photo,' .
                't1.sub_module_ids as sub_modules_ids' )
            ->from('modules AS t1')
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')
            ->where(                
                [
                    't1.program_id' => 3,
                    't1.is_deleted' => 0,
                    't1.branch_id' => $branch_id
                ]
            )             
            ->order_by('t1.id', 'ASC');

            return json_decode($this->datatables->generate());
    }

    public function _get_by_id($branch_id, $id)
    {
        $this->db
            ->select(
                't1.id,' .
                't1.branch_id,' .
                't1.name,' .
                't1.description,' .
                't2.full_path as cover_photo,' .
                't1.sub_module_ids as sub_modules_ids' )
            ->from('modules AS t1')
            ->join('media AS t2', 't2.id = t1.media_id', 'left')
            ->join('branch AS t3', 't3.id = t1.branch_id', 'left')
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.branch_id' => $branch_id,
                    't1.id'  => $id
                ]
                );

        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
    }

    public function _create($data)
    {
        $this->db->trans_begin();

        $this->db->insert('modules', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _update($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('modules', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _soft_delete($id, $data)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->update('modules', $data);

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }

    public function _hard_delete($id)
    {
        $this->db->trans_begin();

        $this->db
            ->where('id', $id)
            ->delete('modules');

        ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
    }
}