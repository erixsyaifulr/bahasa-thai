<?php
defined('BASEPATH') or exit('No direct script access allowed');

class HasilLatihan extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->check_login();
        $this->load->database();
        $this->load->model('HasilLatihanModel');
    }

    public function index()
    {
        $data = konfigurasi('Hasil Latihan');
        // $data['row'] = $this->User_model->get();
        $this->template->load('layouts/template', 'admin/hasil_latihan', $data);
    }

    public function hasil_latihan($id)
    {
        $data = konfigurasi('Hasil Latihan');
        $data['row'] = $this->HasilLatihanModel->get($id);
        $this->template->load('layouts/template', 'member/hasil_latihan', $data);
    }

    public function cetak($id)
    {
        ob_start();
        $data['row'] = $this->HasilLatihanModel->get($id);
        $this->load->view('member/print', $data);
        $html = ob_get_contents();
        ob_end_clean();

        require './assets/html2pdf/autoload.php';

        $pdf = new Spipu\Html2Pdf\Html2Pdf('P', 'A4', 'en');
        $pdf->WriteHTML($html);
        $pdf->Output('Hasil Latihan.pdf', 'D');
    }
}
