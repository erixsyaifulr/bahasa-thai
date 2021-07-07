<?php
defined('BASEPATH') or exit('No direct script access allowed');

class HasilLatihanModel extends CI_Model
{

    public function get($id)
    {
        $this->db->select('hl.id_latihan, hl.list_soal, hl.list_jawaban, hl.jumlah_benar, hl.nilai_bobot, hl.tgl_mulai,
        u.first_name, u.last_name, u.username, u.email, u.phone, l.nama_latihan, l.deskripsi');
        $this->db->where('hl.id_latihan', $id);
        $this->db->where('hl.id_user', $this->session->userdata('id'));
        $this->db->join('tbl_user u', 'u.id = hl.id_user', 'left');
        $this->db->join('tbl_latihan l', 'l.id_latihan = hl.id_latihan', 'left');
        $this->db->from('tbl_hasil_latihan hl');
        $query = $this->db->get();
        return $query;
    }
}
