<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Jadwal extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Jadwal_model');
    }

    public function index()
    {

        $data['title'] = 'Jadwal Mahasiswa';
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();

        $data['jadwal'] = $this->Jadwal_model->getAllJadwal();

        $this->form_validation->set_rules('matakuliah', 'Mata Kuliah', 'required');
        $this->form_validation->set_rules('hari', 'Hari', 'required');
        $this->form_validation->set_rules('jam', 'Jam', 'required');
        $this->form_validation->set_rules('dosen', 'Dosen', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('jadwal/index', $data);
            $this->load->view('templates/footer');
        } else {
            $this->Jadwal_model->tambahJadwal();

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Jadwal Mahasiswa added!</div>');

            redirect('jadwal/index');
        }
    }


    public function ubahJadwal($id)
    {
        $data['title'] = 'Ubah Jadwal';
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();

        $data['jadwal'] = $this->Jadwal_model->getJadwalById($id);

        $this->form_validation->set_rules('matakuliah', 'Mata Kuliah', 'required');
        $this->form_validation->set_rules('hari', 'Hari', 'required');
        $this->form_validation->set_rules('jam', 'Jam', 'required');
        $this->form_validation->set_rules('dosen', 'Dosen', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('jadwal/ubahjadwal', $data);
            $this->load->view('templates/footer');
        } else {
            $this->Jadwal_model->ubahJadwal();
            $this->session->set_flashdata('message', '<div class="alert alert-warning" role="alert">Jadwal <b>Berhasil</b> diubah!</div>');
            redirect('jadwal/index');
        }
    }

    public function hapusJadwal($id)
    {
        $this->Jadwal_model->hapusJadwal($id);
        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Jadwal <b>Berhasil</b> dihapus!</div>');
        redirect('jadwal/index');
    }
}
