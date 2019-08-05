<?php

/*
    Filename    : History_model.php
    Location    : application/models/History_model.php
    Purpose     : History model
    Created     : 6/27/2019 by Scarlet Witch
    Updated     : 08/05/2019 19:40:12 by Scarlet Witch
    Changes     : added order_by to _get_all
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
                        't1.dt_created AS posted_on,' .
                        't1.dt_updated AS updated_on,' .
                        't4.username AS author,')
                    ->from('history AS t1')
                    ->join('branch AS t3', 't3.id = t1.branch_id', 'left')            
                    ->join('users AS t4', 't4.id = t1.created_by', 'left')
                    ->where('t1.is_deleted', 0)       
                    ->order_by('t1.id', 'DESC');
                
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
                        't1.dt_created AS posted_on,' .
                        't1.dt_updated AS updated_on,' .
                        't4.username AS author,')
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