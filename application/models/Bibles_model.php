<?php

/*
    Filename    : Bibles_model.php
    Location    : application/models/Bibles_model.php
    Purpose     : Bibles model
    Created     : 10/22/2019 16:06:21 by Scarlet Witch
    Updated     : 
    Changes     : 
*/

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Bibles_model extends CI_Model
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
                't1.book,' .
                't1.chapter,' .
                't1.verse,' .
                't1.section_title,' .
                't1.foot_note,' .
                't1.NRSV' )
            ->from('bibles AS t1') 
            ->where(                
                [
                    't1.is_deleted' => 0
                ]
            )
            ->order_by('t1.id', 'ASC');

            return json_decode($this->datatables->generate());
    }

    public function _get_version()
    {
        $this->datatables
            ->select(
                't1.id,' .
                't1.abbreviation,' .
                't1.name,' .
                't1.description,' .
                't1.info_text,' .
                't1.language_id')
            ->from('bible_versions AS t1')
            ->where(                
                [
                    't1.is_deleted' => 0
                ]
            )
            ->order_by('t1.id', 'ASC');

            return json_decode($this->datatables->generate());
    }

    public function _get_by_book_id($book_id)
    {
        $this->datatables
            ->select(
                't1.id,' .
                't2.id as book_id,' .
                't2.name as book_name,' .
                't1.chapter,' .
                't1.verse,' .
                't1.section_title,' .
                't1.foot_note,' .
                't1.NRSV as content' )
            ->from('bibles AS t1')
            ->join('bible_books AS t2', 't2.id = t1.book', 'left')
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.book'  => $book_id
                ]
            )
            ->order_by('t1.id', 'ASC');

            return json_decode($this->datatables->generate());
                
        /*    
        $query = $this->db->get();

        return ($query->num_rows() > 0) ? $query->row() : false;
        */
    }

    public function _get_by_chapter_id($chapter_id)
    {
        $this->datatables
            ->select(
                't1.id,' .
                't2.id as book_id,' .
                't2.name as book_name,' .
                't1.chapter,' .
                't1.verse,' .
                't1.section_title,' .
                't1.foot_note,' .
                't1.NRSV as content' )
            ->from('bibles AS t1')
            ->join('bible_books AS t2', 't2.id = t1.book', 'left')
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.chapter'  => $chapter_id
                ]
            )
            ->order_by('t1.id', 'ASC');
           
            return json_decode($this->datatables->generate());
                
            /*    
            $query = $this->db->get();
    
            return ($query->num_rows() > 0) ? $query->row() : false;
            */
    }

    public function _get_by_verse_id($verse_id)
    {
        $this->datatables
            ->select(
                't1.id,' .
                't1.book,' .
                't1.chapter,' .
                't1.verse,' .
                't1.section_title,' .
                't1.foot_note,' .
                't1.NRSV' )
            ->from('bibles AS t1')
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.verse'  => $verse_id
                ]
            )
            ->order_by('t1.id', 'ASC');

            return json_decode($this->datatables->generate());
                
            /*    
            $query = $this->db->get();
    
            return ($query->num_rows() > 0) ? $query->row() : false;
            */
    }

    public function _get_by_book_chapter($book_id, $chapter_id)
    {
        $this->datatables
            ->select(
                't1.id,' .
                't1.book,' .
                't1.chapter,' .
                't1.verse,' .
                't1.section_title,' .
                't1.foot_note,' .
                't1.NRSV' )
            ->from('bibles AS t1')
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.book'  => $book_id,
                    't1.chapter'  => $chapter_id
                ]
            )
            ->order_by('t1.id', 'ASC');                
        
            return json_decode($this->datatables->generate());
                
            /*    
            $query = $this->db->get();
    
            return ($query->num_rows() > 0) ? $query->row() : false;
            */
    }

    public function _get_by_book_chapter_verse($book_id, $chapter_id, $verse_id)
    {
        $this->datatables
            ->select(
                't1.id,' .
                't1.book,' .
                't1.chapter,' .
                't1.verse,' .
                't1.section_title,' .
                't1.foot_note,' .
                't1.NRSV' )
            ->from('bibles AS t1')
            ->where(                
                [
                    't1.is_deleted' => 0,
                    't1.book'  => $book_id,
                    't1.chapter'  => $chapter_id,
                    't1.verse'  => $verse_id
                ]
            )
            ->order_by('t1.id', 'ASC');
            
            return json_decode($this->datatables->generate());
                
            /*    
            $query = $this->db->get();
    
            return ($query->num_rows() > 0) ? $query->row() : false;
            */
    }

}