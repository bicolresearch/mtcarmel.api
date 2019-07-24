<?php

/*
    Filename    : History_model.php
    Location    : application/models/History_model.php
    Purpose     : History model
    Created     : 6/27/2019 by Scarlet Witch
    Updated     : 07/22/2019 11:57:14 by Scarlet Witch
    Changes     : update the script for datatables
*/


        if (!defined('BASEPATH')) {
            exit('No direct script access allowed');
        }
        
        class History_model extends CI_Model
        {
        
            public function __construct()
            {
                parent::__construct();
            }
        
            public function _get_all()
            {
                $this->datatables
                    ->select(
                        't1.id,' .
                        't1.branch_id,' . 
                        't1.titular,' .
                        't1.diocese,' .
                        't1.date_of_establishment,' .
                        't1.feast_day,' .
                        't1.content,' .                
                        't1.dt_created as posted_on,' .
                        't1.dt_updated as updated_on,' .
                        't4.username as author,')
                    ->from('history AS t1')
                    ->join('branch AS t3', 't3.id = t1.branch_id', 'left')            
                    ->join('users AS t4', 't4.id = t1.created_by', 'left')
                    ->where('t1.is_deleted', 0);
                
                return json_decode($this->datatables->generate());
            }
        
            public function _get_by_id($id)
            {
                $this->db
                    ->select(
                        't1.id,' .
                        't1.branch_id,' . 
                        't1.titular,' .
                        't1.diocese,' .
                        't1.date_of_establishment,' .
                        't1.feast_day,' .
                        't1.content,' .                
                        't1.dt_created as posted_on,' .
                        't1.dt_updated as updated_on,' .
                        't4.username as author,')
                    ->from('history AS t1')
                    ->join('branch AS t3', 't3.id = t1.branch_id', 'left')            
                    ->join('users AS t4', 't4.id = t1.created_by', 'left')
                    ->where('t1.is_deleted', 0)
                    ->where('t1.id', $id);
        
                $query = $this->db->get();
        
                return ($query->num_rows() > 0) ? $query->row() : false;
            }
        
            public function _create($data)
            {
                $this->db->trans_begin();
        
                $this->db->insert('history', $data);
        
                ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
            }
        
            public function _update($id, $data)
            {
                $this->db->trans_begin();
        
                $this->db
                    ->where('id', $id)
                    ->update('history', $data);
        
                ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
            }
        
            public function _soft_delete($id, $data)
            {
                $this->db->trans_begin();
        
                $this->db
                    ->where('id', $id)
                    ->update('history', $data);
        
                ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
            }
        
            public function _hard_delete($id)
            {
                $this->db->trans_begin();
        
                $this->db
                    ->where('id', $id)
                    ->delete('history');
        
                ($this->db->trans_status() === false) ? $this->db->trans_rollback() : $this->db->trans_commit();
            }
        }