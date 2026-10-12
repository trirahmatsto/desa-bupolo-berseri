<?php

namespace Database\Seeders;

use App\Models\ArtikelGaleri;
use Illuminate\Database\Seeder;

class ArtikelGaleriSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $artikels = [
            [
                'judul' => 'Pemerintah Desa Bupolo Salurkan Bantuan Alat Pertanian Modern',
                'konten' => '<p><strong>Jamilu</strong> - Kepala Desa Jamilu secara resmi menyerahkan bantuan berupa traktor tangan dan mesin pompa air kepada perwakilan kelompok tani makmur pada hari Senin kemarin. Bantuan ini diharapkan mampu mendongkrak produktivitas persawahan warga dan mengefisienkan waktu pengolahan lahan pasca panen.</p><p>Program bantuan ini bersumber dari alokasi Dana Desa bidang pemberdayaan ekonomi masyarakat. Pemerintah desa berkomitmen untuk terus memantau pemanfaatan alat pertanian ini agar digunakan secara maksimal dan gotong royong.</p>',
                'foto_sampul' => null,
                'kategori' => 'berita',
            ],
            [
                'judul' => 'Sosialisasi Pencegahan Stunting dan Pembagian Makanan Tambahan Balita',
                'konten' => '<p><strong>Jamilu</strong> - Kader Posyandu bekerjasama dengan Puskesmas Kecamatan menyelenggarakan penyuluhan gizi seimbang bagi ibu hamil dan menyusui di Aula Kantor Desa. Selain edukasi pencegahan stunting sejak dini, diserahkan pula paket makanan tambahan bergizi secara gratis.</p><p>Acara yang dihadiri oleh sekitar 80 warga ini berlangsung dengan lancar dan antusias tinggi. Program ini merupakan agenda rutin tahunan desa dalam mendukung kesehatan generasi masa depan Bupolo yang lebih gemilang.</p>',
                'foto_sampul' => null,
                'kategori' => 'berita',
            ],
            [
                'judul' => 'Kerja Bakti Massal Penanaman Pohon dan Pembersihan Aliran Sungai',
                'konten' => '<p><strong>Jamilu</strong> - Menghadapi musim penghujan, ratusan warga Desa Jamilu melaksanakan aksi gotong royong membersihkan sedimentasi lumpur di sepanjang daerah aliran sungai. Aksi ini dibarengi dengan penanaman 200 bibit pohon mahoni di bantaran sungai guna mencegah erosi tanah.</p><p>Semangat kebersamaan terpancar dari seluruh perwakilan RT dan RW yang hadir. Kepala Desa mengapresiasi kesadaran lingkungan warga yang terus terjaga secara turun-temurun.</p>',
                'foto_sampul' => null,
                'kategori' => 'berita',
            ],
            [
                'judul' => 'Dokumentasi Turnamen Sepak Bola Antar Dusun HUT Desa',
                'konten' => '<p>Dokumentasi keseruan dan kemeriahan puncak acara Turnamen Sepak Bola Piala Kepala Desa Jamilu yang diikuti oleh perwakilan tim dari 4 dusun dalam rangka memperingati Hari Ulang Tahun Desa yang ke-42.</p>',
                'foto_sampul' => null,
                'kategori' => 'galeri',
            ],
            [
                'judul' => 'Penyaluran Bantuan Langsung Tunai (BLT) Tahap Kedua Berjalan Tertib',
                'konten' => '<p><strong>Jamilu</strong> - Pemerintah Desa Jamilu menyalurkan Bantuan Langsung Tunai (BLT) tahap kedua untuk triwulan ini kepada keluarga penerima manfaat (KPM). Proses penyaluran berjalan dengan tertib sesuai dengan jadwal per dusun guna menghindari antrean yang menumpuk.</p>',
                'foto_sampul' => null,
                'kategori' => 'berita',
            ],
        ];

        foreach ($artikels as $artikel) {
            ArtikelGaleri::create($artikel);
        }
    }
}
