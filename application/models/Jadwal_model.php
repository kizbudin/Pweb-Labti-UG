<?php

class jadwal_model extends CI_model
{
    public function getAllJadwal()
    {
        return $this->db->get('tb_jadwal')->result_array();
    }

    public function getJadwalById($id)
    {
        return $this->db->get_where('tb_jadwal', ['id' => $id])->row_array();
    }
    public function tambahJadwal()
    {
        $data = [
            'matakuliah' => $this->input->post('matakuliah', true),
            'hari'      => $this->input->post('hari', true),
            'jam'       => $this->input->post('jam', true),
            'dosen'     => $this->input->post('dosen', true)
        ];
        $this->db->insert('tb_jadwal', $data);
    }

    public function hapusJadwal($id)
    {
        $this->db->delete('tb_jadwal', ['id' => $id]);
    }


    public function ubahJadwal()
    {
        $data = [
            'matakuliah' => $this->input->post('matakuliah'),
            'hari'      => $this->input->post('hari'),
            'jam'       => $this->input->post('jam'),
            'dosen'     => $this->input->post('dosen')
        ];

        $this->db->where('id', $this->input->post('id'));
        $this->db->update('tb_jadwal', $data);
    }
}
