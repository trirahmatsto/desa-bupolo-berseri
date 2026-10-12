-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: bupolo_berseri
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artikel_galeri`
--

DROP TABLE IF EXISTS `artikel_galeri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artikel_galeri` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `konten` longtext NOT NULL,
  `foto_sampul` varchar(255) DEFAULT NULL,
  `kategori` enum('berita','galeri') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikel_galeri`
--

LOCK TABLES `artikel_galeri` WRITE;
/*!40000 ALTER TABLE `artikel_galeri` DISABLE KEYS */;
INSERT INTO `artikel_galeri` VALUES (1,'Pemerintah Desa Bupolo Salurkan Bantuan Alat Pertanian Modern','<p><strong>BUPOLO BERSERI</strong> - Kepala Desa Bupolo Berseri secara resmi menyerahkan bantuan berupa traktor tangan dan mesin pompa air kepada perwakilan kelompok tani makmur pada hari Senin kemarin. Bantuan ini diharapkan mampu mendongkrak produktivitas persawahan warga dan mengefisienkan waktu pengolahan lahan pasca panen.</p><p>Program bantuan ini bersumber dari alokasi Dana Desa bidang pemberdayaan ekonomi masyarakat. Pemerintah desa berkomitmen untuk terus memantau pemanfaatan alat pertanian ini agar digunakan secara maksimal dan gotong royong.</p>',NULL,'berita','2026-07-05 18:33:53','2026-07-05 18:33:53'),(2,'Sosialisasi Pencegahan Stunting dan Pembagian Makanan Tambahan Balita','<p><strong>BUPOLO BERSERI</strong> - Kader Posyandu bekerjasama dengan Puskesmas Kecamatan menyelenggarakan penyuluhan gizi seimbang bagi ibu hamil dan menyusui di Aula Kantor Desa. Selain edukasi pencegahan stunting sejak dini, diserahkan pula paket makanan tambahan bergizi secara gratis.</p><p>Acara yang dihadiri oleh sekitar 80 warga ini berlangsung dengan lancar dan antusias tinggi. Program ini merupakan agenda rutin tahunan desa dalam mendukung kesehatan generasi masa depan Bupolo yang lebih gemilang.</p>',NULL,'berita','2026-07-05 18:33:53','2026-07-05 18:33:53'),(3,'Kerja Bakti Massal Penanaman Pohon dan Pembersihan Aliran Sungai','<p><strong>BUPOLO BERSERI</strong> - Menghadapi musim penghujan, ratusan warga Desa Bupolo Berseri melaksanakan aksi gotong royong membersihkan sedimentasi lumpur di sepanjang daerah aliran sungai. Aksi ini dibarengi dengan penanaman 200 bibit pohon mahoni di bantaran sungai guna mencegah erosi tanah.</p><p>Semangat kebersamaan terpancar dari seluruh perwakilan RT dan RW yang hadir. Kepala Desa mengapresiasi kesadaran lingkungan warga yang terus terjaga secara turun-temurun.</p>',NULL,'berita','2026-07-05 18:33:53','2026-07-05 18:33:53'),(4,'Dokumentasi Turnamen Sepak Bola Antar Dusun HUT Desa','<p>Dokumentasi keseruan dan kemeriahan puncak acara Turnamen Sepak Bola Piala Kepala Desa Bupolo Berseri yang diikuti oleh perwakilan tim dari 4 dusun dalam rangka memperingati Hari Ulang Tahun Desa yang ke-42.</p>',NULL,'galeri','2026-07-05 18:33:53','2026-07-05 18:33:53'),(5,'Penyaluran Bantuan Langsung Tunai (BLT) Tahap Kedua Berjalan Tertib','<p><strong>BUPOLO BERSERI</strong> - Pemerintah Desa Bupolo Berseri menyalurkan Bantuan Langsung Tunai (BLT) tahap kedua untuk triwulan ini kepada keluarga penerima manfaat (KPM). Proses penyaluran berjalan dengan tertib sesuai dengan jadwal per dusun guna menghindari antrean yang menumpuk.</p>',NULL,'berita','2026-07-05 18:33:53','2026-07-05 18:33:53');
/*!40000 ALTER TABLE `artikel_galeri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('356a192b7913b04c54574d18c28d46e6395428ab','i:1;',1785208085),('356a192b7913b04c54574d18c28d46e6395428ab:timer','i:1785208085;',1785208085),('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3','i:1;',1785821737),('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer','i:1785821737;',1785821737);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_desa`
--

DROP TABLE IF EXISTS `data_desa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_desa` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `desa_id` bigint(20) unsigned NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_desa_desa_id_kategori_unique` (`desa_id`,`kategori`),
  CONSTRAINT `data_desa_desa_id_foreign` FOREIGN KEY (`desa_id`) REFERENCES `desa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_desa`
--

LOCK TABLES `data_desa` WRITE;
/*!40000 ALTER TABLE `data_desa` DISABLE KEYS */;
INSERT INTO `data_desa` VALUES (7,2,'transportasi','{\"trans_kendaraan\":[{\"id\":\"4b3ce82a-7597-4ad7-b064-5b017df19eb2\",\"desa\":\"Jamilu\",\"jenis_kendaraan\":\"Sepeda Motor\",\"jumlah\":0,\"created_at\":\"2026-07-27T01:05:39.341752+00:00\"},{\"id\":\"05a9d9de-f180-46f3-8082-5737d0fa0665\",\"desa\":\"Jamilu\",\"jenis_kendaraan\":\"Mobil Penumpang\",\"jumlah\":0,\"created_at\":\"2026-07-27T01:05:39.341752+00:00\"},{\"id\":\"f0c825d5-af5c-4691-bc61-8e24b329e058\",\"desa\":\"Jamilu\",\"jenis_kendaraan\":\"Truk\\/Pick-up\",\"jumlah\":0,\"created_at\":\"2026-07-27T01:05:39.341752+00:00\"},{\"id\":\"53795f62-5423-42da-8354-18b0c0c02d7f\",\"desa\":\"Jamilu\",\"jenis_kendaraan\":\"Perahu Bermotor\",\"jumlah\":0,\"created_at\":\"2026-07-27T01:05:39.341752+00:00\"}],\"trans_menara\":[{\"id\":\"d68ac597-73a9-4d38-aac9-acf17905b2d5\",\"desa\":\"Jamilu\",\"nama_dusun\":\"Dusun I\",\"jumlah_menara\":1,\"kondisi_sinyal\":\"Sedang\",\"operator\":\"Telkomsel\",\"created_at\":\"2026-07-27T01:05:39.988916+00:00\"},{\"id\":\"c784e095-bd71-4c68-be7a-78295ff3dd9a\",\"desa\":\"Jamilu\",\"nama_dusun\":\"Dusun II\",\"jumlah_menara\":1,\"kondisi_sinyal\":\"Kuat\",\"operator\":\"Telkomsel, XL\",\"created_at\":\"2026-07-27T01:05:39.988916+00:00\"}],\"trans_bengkel\":[{\"id\":\"95c64597-d18c-4890-b586-166bb6e98acd\",\"desa\":\"Jamilu\",\"nama_dusun\":\"Dusun I\",\"bengkel_motor\":3,\"bengkel_mobil\":1,\"bengkel_las\":1,\"created_at\":\"2026-07-27T01:05:40.61981+00:00\"},{\"id\":\"6208eedb-5798-44d7-b7b8-9701967c069f\",\"desa\":\"Jamilu\",\"nama_dusun\":\"Dusun II\",\"bengkel_motor\":5,\"bengkel_mobil\":2,\"bengkel_las\":2,\"created_at\":\"2026-07-27T01:05:40.61981+00:00\"}],\"trans_kantor_pos\":[]}','2026-07-30 16:13:24','2026-08-03 21:47:10'),(8,2,'sosial','{\"sosial_sekolah\":[{\"id\":\"ddb0c524-9f8c-4ea2-9697-15ff3bd1142c\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"PAUD\\/TK\",\"negeri\":0,\"swasta\":1,\"created_at\":\"2026-07-27T01:04:44.85255+00:00\"},{\"id\":\"844bf15a-5615-4154-ab1c-e119cbcd493f\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"SD\\/Sederajat\",\"negeri\":0,\"swasta\":1,\"created_at\":\"2026-07-27T01:04:44.85255+00:00\"},{\"id\":\"62d4eafe-77ed-454a-a614-0f781565f68e\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"SMP\\/Sederajat\",\"negeri\":0,\"swasta\":1,\"created_at\":\"2026-07-27T01:04:44.85255+00:00\"},{\"id\":\"62de9086-1928-4e72-bf99-3fa76e5c34cb\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"SMA\\/Sederajat\",\"negeri\":1,\"swasta\":0,\"created_at\":\"2026-07-27T01:04:44.85255+00:00\"},{\"id\":\"289bc541-5ea1-4841-8888-7d53ec7c3775\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"Universitas\",\"negeri\":0,\"swasta\":0,\"created_at\":\"2026-07-27T01:04:44.85255+00:00\"}],\"sosial_guru\":[{\"id\":\"8f550d76-8ef2-4cce-9e65-a66fc6d1e1cc\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"RA AL KHAIRAT DESA Jamilu\",\"laki_laki\":0,\"perempuan\":6,\"created_at\":\"2026-07-27T01:04:45.390199+00:00\"},{\"id\":\"31a5ac4b-c674-45f8-b788-0b31599ff0fc\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"SD AL HILAAL Jamilu\",\"laki_laki\":0,\"perempuan\":0,\"created_at\":\"2026-07-27T01:04:45.390199+00:00\"},{\"id\":\"fee68566-2a98-4dcd-8c2a-ca273f785822\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"SMP IT KHAIRUN BUNAYYA\",\"laki_laki\":6,\"perempuan\":5,\"created_at\":\"2026-07-27T01:04:45.390199+00:00\"},{\"id\":\"e1400849-8c4d-407a-9704-18acb3e7e7b6\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"SMK N 6 BURU\",\"laki_laki\":0,\"perempuan\":0,\"created_at\":\"2026-07-27T01:04:45.390199+00:00\"}],\"sosial_murid\":[{\"id\":\"f9d2d109-5484-4aaf-b378-8add3c0c0bef\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"RA AL KHAIRAT DESA Jamilu\",\"laki_laki\":0,\"perempuan\":0,\"created_at\":\"2026-07-27T01:04:45.73143+00:00\"},{\"id\":\"f6efef46-c5d0-43bd-baad-18d4ce4741d9\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"SD AL HILAAL Jamilu\",\"laki_laki\":0,\"perempuan\":0,\"created_at\":\"2026-07-27T01:04:45.73143+00:00\"},{\"id\":\"f8437a02-b77f-49b2-a8fb-72e3ed44e79d\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"SMP IT KHAIRUN BUNAYYA\",\"laki_laki\":25,\"perempuan\":31,\"created_at\":\"2026-07-27T01:04:45.73143+00:00\"},{\"id\":\"05609d0b-6680-4bd1-ac67-f5f849d4bea1\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"SMK N 6 BURU\",\"laki_laki\":0,\"perempuan\":0,\"created_at\":\"2026-07-27T01:04:45.73143+00:00\"}],\"sosial_ruang_kelas\":[{\"id\":\"e92e061b-6c8d-4a40-97ce-2152bedd8619\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"RA AL KHAIRAT DESA Jamilu\",\"jumlah_ruang\":3,\"kondisi_baik\":3,\"kondisi_rusak\":0,\"created_at\":\"2026-07-27T01:04:46.104917+00:00\"},{\"id\":\"3fcc17be-7729-49fb-829d-f1b05fc962d8\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"SD AL HILAAL Jamilu\",\"jumlah_ruang\":12,\"kondisi_baik\":12,\"kondisi_rusak\":0,\"created_at\":\"2026-07-27T01:04:46.104917+00:00\"},{\"id\":\"e2dd1617-b0de-48df-9847-ad3d8602bc46\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"SMP IT KHAIRUN BUNAYYA\",\"jumlah_ruang\":5,\"kondisi_baik\":0,\"kondisi_rusak\":5,\"created_at\":\"2026-07-27T01:04:46.104917+00:00\"},{\"id\":\"60299fbe-7adb-48a6-8a45-905718110be8\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"SMK N 6 BURU\",\"jumlah_ruang\":0,\"kondisi_baik\":0,\"kondisi_rusak\":0,\"created_at\":\"2026-07-27T01:04:46.104917+00:00\"}],\"sosial_faskes\":[{\"id\":\"f919869f-5233-4724-88bc-363e8b487dc6\",\"desa\":\"Jamilu\",\"nama_dusun\":\"Desa Jamilu\",\"puskesmas\":0,\"pustu\":1,\"polindes\":1,\"posyandu\":1,\"klinik\":0,\"created_at\":\"2026-07-27T01:04:46.47731+00:00\"}],\"sosial_posyandu\":[{\"id\":\"a64b239a-25b6-49c2-8820-4d4c9e2570bb\",\"desa\":\"Jamilu\",\"nama_posyandu\":\"Posyandu Binaria Desa Jamilu\",\"nama_dusun\":\"Desa Jamilu\",\"jumlah_kader\":10,\"created_at\":\"2026-07-27T01:04:46.842322+00:00\"}],\"sosial_gizi\":[{\"id\":\"8f4ed0ef-55d2-4e16-be56-0fb42925a248\",\"desa\":\"Jamilu\",\"status_gizi\":\"Gizi Buruk\",\"jumlah\":0,\"created_at\":\"2026-07-27T01:04:47.186886+00:00\"},{\"id\":\"281fa55a-2f37-4134-8c8d-5086926a93dc\",\"desa\":\"Jamilu\",\"status_gizi\":\"Gizi Kurang\",\"jumlah\":0,\"created_at\":\"2026-07-27T01:04:47.186886+00:00\"},{\"id\":\"e21a3971-e131-495a-964f-e4d5d2950e4b\",\"desa\":\"Jamilu\",\"status_gizi\":\"Gizi Baik\",\"jumlah\":91,\"created_at\":\"2026-07-27T01:04:47.186886+00:00\"},{\"id\":\"f74c1700-d86a-42b4-b33d-8c51379a1330\",\"desa\":\"Jamilu\",\"status_gizi\":\"Obesitas\",\"jumlah\":0,\"created_at\":\"2026-07-27T01:04:47.186886+00:00\"}],\"sosial_kesejahteraan\":[],\"sosial_bansos\":[]}','2026-07-30 16:13:24','2026-08-03 21:47:10'),(9,2,'kependudukan','{\"kpd_penduduk_dusun\":[],\"kpd_pendidikan\":[{\"id\":\"23408de9-d515-4410-a03a-36b7fd570032\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"TK\\/Sederajat\",\"jumlah\":48,\"persentase\":5.91,\"created_at\":\"2026-07-27T05:10:42.706308+00:00\"},{\"id\":\"022ff60a-059e-497a-82f0-648eeb0ca632\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"SD\\/Sederajat\",\"jumlah\":286,\"persentase\":35.22,\"created_at\":\"2026-07-27T05:10:42.706308+00:00\"},{\"id\":\"8904db86-08a8-4d19-a298-134c4c78600a\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"SMP\\/Sederajat\",\"jumlah\":112,\"persentase\":13.79,\"created_at\":\"2026-07-27T05:10:42.706308+00:00\"},{\"id\":\"f5e28aaa-5439-415f-9476-7b73a2b62442\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"SMA\\/Sederajat\",\"jumlah\":105,\"persentase\":12.93,\"created_at\":\"2026-07-27T05:10:42.706308+00:00\"},{\"id\":\"5b2b9e15-040e-4759-82f7-a45699a5d6fb\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"DI\\/DIII\",\"jumlah\":27,\"persentase\":3.33,\"created_at\":\"2026-07-27T05:10:42.706308+00:00\"},{\"id\":\"fc31bfae-8654-42bf-a38f-04227a6def49\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"S1\",\"jumlah\":58,\"persentase\":7.14,\"created_at\":\"2026-07-27T05:10:42.706308+00:00\"},{\"id\":\"c1709d7f-ab7b-48dd-bb81-88430d576a12\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"S2\",\"jumlah\":2,\"persentase\":0.25,\"created_at\":\"2026-07-27T05:10:42.706308+00:00\"},{\"id\":\"83c66f9a-10cf-4684-9491-b3d4904b6c85\",\"desa\":\"Jamilu\",\"tingkat_pendidikan\":\"Tidak Bersekolah\",\"jumlah\":174,\"persentase\":21.43,\"created_at\":\"2026-07-27T05:10:42.706308+00:00\"}],\"kpd_kk_dusun\":[{\"id\":\"ba7ade43-11fe-4062-8b5d-4d4f246f6acc\",\"desa\":\"Jamilu\",\"nama_dusun\":\"\",\"jumlah_kk\":0,\"created_at\":\"2026-07-27T05:10:43.365315+00:00\"}],\"kpd_pekerjaan\":[{\"id\":\"20d810f6-422e-4e5b-b8bf-fbbf68b2d1b0\",\"desa\":\"Jamilu\",\"jenis_pekerjaan\":\"PNS\",\"jumlah\":42,\"created_at\":\"2026-07-27T05:10:43.997528+00:00\"},{\"id\":\"f32a2d33-f43e-48dd-9db4-52ad14625557\",\"desa\":\"Jamilu\",\"jenis_pekerjaan\":\"TNI\\/Polri\",\"jumlah\":13,\"created_at\":\"2026-07-27T05:10:43.997528+00:00\"},{\"id\":\"a1da7df4-f8d4-4553-b004-3518aaa8b54c\",\"desa\":\"Jamilu\",\"jenis_pekerjaan\":\"Karyawan Swasta\",\"jumlah\":19,\"created_at\":\"2026-07-27T05:10:43.997528+00:00\"},{\"id\":\"23b9011c-8c6e-4ef9-b316-dbdcfe29ebe1\",\"desa\":\"Jamilu\",\"jenis_pekerjaan\":\"Wiraswasta\",\"jumlah\":45,\"created_at\":\"2026-07-27T05:10:43.997528+00:00\"},{\"id\":\"c7ae77f4-c2b1-4d10-97b5-8a78a71f3eb8\",\"desa\":\"Jamilu\",\"jenis_pekerjaan\":\"Petani\",\"jumlah\":1061,\"created_at\":\"2026-07-27T05:10:43.997528+00:00\"},{\"id\":\"28b05f8c-e808-45a7-b40a-332e5ec8ebf1\",\"desa\":\"Jamilu\",\"jenis_pekerjaan\":\"Aktivitas Jasa\",\"jumlah\":8,\"created_at\":\"2026-07-27T05:10:43.997528+00:00\"},{\"id\":\"a825c779-2ee1-4586-ae4c-618c4fafedd6\",\"desa\":\"Jamilu\",\"jenis_pekerjaan\":\"Pengrajin\",\"jumlah\":4,\"created_at\":\"2026-07-27T05:10:43.997528+00:00\"},{\"id\":\"e2831e1e-f381-4dcd-933f-96165f8f40e9\",\"desa\":\"Jamilu\",\"jenis_pekerjaan\":\"Lainnya\",\"jumlah\":41,\"created_at\":\"2026-07-27T05:10:43.997528+00:00\"},{\"id\":\"13892b4c-b063-4d14-99e8-7bba184b7687\",\"desa\":\"Jamilu\",\"jenis_pekerjaan\":\"Tidak Bekerja\",\"jumlah\":16,\"created_at\":\"2026-07-27T05:10:43.997528+00:00\"}],\"kpd_tempat_ibadah\":[{\"id\":\"baababb6-a67d-4aad-a8cc-f6aa346d9fc7\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 01 RW 01\",\"masjid\":0,\"musholla\":0,\"gereja\":0,\"pura\":0,\"vihara\":0,\"created_at\":\"2026-07-27T05:10:44.700807+00:00\"},{\"id\":\"2394c8a2-6fe5-48c3-afd1-d4cd6e6da114\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 02 RW 01\",\"masjid\":1,\"musholla\":0,\"gereja\":0,\"pura\":0,\"vihara\":0,\"created_at\":\"2026-07-27T05:10:44.700807+00:00\"},{\"id\":\"fb5815ab-bf31-4d3f-b5b3-b7f818face58\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 03 RW 01\",\"masjid\":0,\"musholla\":0,\"gereja\":0,\"pura\":0,\"vihara\":0,\"created_at\":\"2026-07-27T05:10:44.700807+00:00\"},{\"id\":\"c0094e4a-d765-4d08-b32e-05635bd3822b\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 04 RW 02\",\"masjid\":0,\"musholla\":0,\"gereja\":0,\"pura\":0,\"vihara\":0,\"created_at\":\"2026-07-27T05:10:44.700807+00:00\"},{\"id\":\"6463c1a0-5451-4278-bcac-009488e00ac7\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 05 RW 02\",\"masjid\":0,\"musholla\":0,\"gereja\":0,\"pura\":0,\"vihara\":0,\"created_at\":\"2026-07-27T05:10:44.700807+00:00\"},{\"id\":\"d797fac9-4dac-44be-9bd9-6f0137e5aba6\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 06 RW 02\",\"masjid\":0,\"musholla\":0,\"gereja\":0,\"pura\":0,\"vihara\":0,\"created_at\":\"2026-07-27T05:10:44.700807+00:00\"},{\"id\":\"863f5fea-8e23-4e7f-a2d1-29b1964127d8\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 07 RW 03\",\"masjid\":0,\"musholla\":0,\"gereja\":0,\"pura\":0,\"vihara\":0,\"created_at\":\"2026-07-27T05:10:44.700807+00:00\"},{\"id\":\"496bbbe2-7ac7-4e3a-99c1-cd2a8fbbe322\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 08 RW 03\",\"masjid\":0,\"musholla\":0,\"gereja\":0,\"pura\":0,\"vihara\":0,\"created_at\":\"2026-07-27T05:10:44.700807+00:00\"},{\"id\":\"a7b145b3-7eee-482f-becd-15ce36e520bf\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 09 RW 03\",\"masjid\":0,\"musholla\":0,\"gereja\":0,\"pura\":0,\"vihara\":0,\"created_at\":\"2026-07-27T05:10:44.700807+00:00\"}],\"kpd_masjid\":[{\"id\":\"c973f969-48ba-47ef-8be6-c64ca4505d02\",\"desa\":\"Jamilu\",\"nama_masjid\":\"Masjid Baiturrahman\",\"nama_dusun\":\"RT 2 RW 1\",\"alamat\":\"Desa Jamilu\",\"created_at\":\"2026-07-27T05:10:45.320374+00:00\"}],\"kpd_musholla\":[{\"id\":\"7b3f2416-cf7f-4ff9-9c56-65445189fcb7\",\"desa\":\"Jamilu\",\"nama_musholla\":\"\",\"nama_dusun\":\"\",\"alamat\":\"\",\"created_at\":\"2026-07-27T05:10:45.928232+00:00\"}],\"kpd_majelis_taklim\":[{\"id\":\"6347edce-ebad-45d6-97f8-1d40136129c1\",\"desa\":\"Jamilu\",\"nama_dusun\":\"\",\"jumlah_kelompok\":0,\"jumlah_anggota\":0,\"created_at\":\"2026-07-27T05:10:46.578586+00:00\"}],\"kpd_fasilitas_olahraga\":[{\"id\":\"8f6d1b5e-7768-4a3b-92df-967214f3dcef\",\"desa\":\"Jamilu\",\"jenis_fasilitas\":\"Lapangan Bola\",\"jumlah\":1,\"kondisi\":\"Baik\",\"created_at\":\"2026-07-27T05:10:47.266964+00:00\"},{\"id\":\"04df5adb-adcb-402f-b0d0-39f28227d11a\",\"desa\":\"Jamilu\",\"jenis_fasilitas\":\"Lapangan Futsal\",\"jumlah\":1,\"kondisi\":\"Baik\",\"created_at\":\"2026-07-27T05:10:47.266964+00:00\"},{\"id\":\"563b9a9b-9b76-488b-a371-7531c2e5ae15\",\"desa\":\"Jamilu\",\"jenis_fasilitas\":\"Lapangan Volly\",\"jumlah\":1,\"kondisi\":\"Baik\",\"created_at\":\"2026-07-27T05:10:47.266964+00:00\"}]}','2026-07-30 16:13:24','2026-08-03 21:47:10'),(10,2,'pertanian','{\"tani_lahan_irigasi\":[],\"tani_hutan\":[]}','2026-07-30 16:13:24','2026-07-30 16:13:24'),(11,2,'perdagangan','{\"dagang_industri\":[{\"id\":\"1105ec66-c24a-4a64-a690-71f2cd7f7382\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 01 RW 01\",\"jenis_industri\":\"Pengolahan Kopra\",\"jumlah\":2,\"created_at\":\"2026-07-27T01:00:19.03082+00:00\"},{\"id\":\"f50ec5cd-38ea-440b-a00c-7fbbbf323f5f\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 03 RW 01\",\"jenis_industri\":\"Industri Galon\",\"jumlah\":1,\"created_at\":\"2026-07-27T01:00:19.03082+00:00\"},{\"id\":\"def31ec6-75c5-45ba-ad7d-7e55fc8da656\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 05 RW 02\",\"jenis_industri\":\"Pengolahan Kopra\",\"jumlah\":1,\"created_at\":\"2026-07-27T01:00:19.03082+00:00\"},{\"id\":\"90d27712-af43-4dda-8a30-fc19934d784f\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 06 RW 02\",\"jenis_industri\":\"Pengolahan Kopra\",\"jumlah\":1,\"created_at\":\"2026-07-27T01:00:19.03082+00:00\"},{\"id\":\"28c9ebf0-e147-478d-b0f3-9e4826a9a45c\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 06 RW 02\",\"jenis_industri\":\"Industri Galon\",\"jumlah\":1,\"created_at\":\"2026-07-27T01:00:19.03082+00:00\"},{\"id\":\"beb4dad0-4705-4061-b8ef-56dbff4d0e44\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 07 RW 03\",\"jenis_industri\":\"Pengolahan Kopra\",\"jumlah\":2,\"created_at\":\"2026-07-27T01:00:19.03082+00:00\"},{\"id\":\"62cdc440-5553-4685-84cc-3522d08ae24c\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 08 RW 03\",\"jenis_industri\":\"Pengolahan Kopra\",\"jumlah\":1,\"created_at\":\"2026-07-27T01:00:19.03082+00:00\"},{\"id\":\"e241a84e-564f-4ef4-97c1-fbf430326d09\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 09 RW 03\",\"jenis_industri\":\"Pengolahan Kopra\",\"jumlah\":2,\"created_at\":\"2026-07-27T01:00:19.03082+00:00\"},{\"id\":\"46494176-0d7b-4724-849d-3962db04d422\",\"desa\":\"Jamilu\",\"nama_dusun\":\"RT 09 RW 03\",\"jenis_industri\":\"Penyulingan Minyak Kayu Putih\",\"jumlah\":1,\"created_at\":\"2026-07-27T01:00:19.03082+00:00\"}],\"dagang_pasar\":[{\"id\":\"19541556-8be0-434d-83d8-c4df0260a14e\",\"desa\":\"Jamilu\",\"nama_dusun\":\"Dusun II\",\"nama_pasar\":\"Pasar Minggu Jamilu\",\"jenis_pasar\":\"Tradisional\",\"jumlah\":1,\"created_at\":\"2026-07-27T01:00:19.652957+00:00\"}],\"dagang_bank_koperasi\":[{\"id\":\"54ff836c-fbd3-49a7-9c29-eb1b58b0374a\",\"desa\":\"Jamilu\",\"nama_dusun\":\"Dusun I\",\"jenis\":\"Koperasi\",\"nama\":\"KUD Jamilu\",\"jumlah\":1,\"created_at\":\"2026-07-27T01:00:20.282658+00:00\"}]}','2026-07-30 16:13:24','2026-08-03 18:37:31'),(12,2,'pariwisata','{\"wisata_restoran\":[{\"id\":\"8f0038e3-aa88-4e62-96e9-ff980efd29af\",\"desa\":\"Jamilu\",\"nama_dusun\":\"Dusun I\",\"restoran\":0,\"kedai\":2,\"warung_makan\":7,\"created_at\":\"2026-04-16T18:43:45.406723+00:00\"},{\"id\":\"b5814f44-75cb-4434-98aa-764ec7c01dd9\",\"desa\":\"Jamilu\",\"nama_dusun\":\"Dusun II\",\"restoran\":1,\"kedai\":3,\"warung_makan\":10,\"created_at\":\"2026-04-16T18:43:45.406723+00:00\"}],\"wisata_toko\":[{\"id\":\"e3886e29-6cce-4c0b-a55f-ae86bb07ed21\",\"desa\":\"Jamilu\",\"nama_dusun\":\"Dusun I\",\"toko_kelontong\":7,\"warung\":10,\"minimarket\":1,\"created_at\":\"2026-04-16T18:43:45.406723+00:00\"},{\"id\":\"4b251eb2-0730-455c-a5e2-7b959522ba42\",\"desa\":\"Jamilu\",\"nama_dusun\":\"Dusun II\",\"toko_kelontong\":11,\"warung\":14,\"minimarket\":1,\"created_at\":\"2026-04-16T18:43:45.406723+00:00\"}],\"wisata_penginapan\":[{\"id\":\"82084eda-d90b-4f25-adf7-822282e035f7\",\"desa\":\"Jamilu\",\"nama_dusun\":\"Dusun I\",\"hotel\":0,\"penginapan\":1,\"homestay\":1,\"created_at\":\"2026-04-16T18:43:45.406723+00:00\"},{\"id\":\"0f5ae022-7bd1-414e-b5da-78944769b71f\",\"desa\":\"Jamilu\",\"nama_dusun\":\"Dusun II\",\"hotel\":0,\"penginapan\":0,\"homestay\":2,\"created_at\":\"2026-04-16T18:43:45.406723+00:00\"}]}','2026-07-30 16:13:24','2026-08-03 18:37:31'),(13,2,'sensus_perumahan','{\"sens_jenis_bangunan\":[{\"jenis_bangunan\":\"Rumah tinggal tunggal\",\"jumlah\":285}],\"sens_kepemilikan_bangunan\":[{\"status_kepemilikan\":\"Bebas sewa\",\"jumlah\":19},{\"status_kepemilikan\":\"Lainnya\",\"jumlah\":51},{\"status_kepemilikan\":\"Milik Sendiri\",\"jumlah\":215}],\"sens_lantai\":[{\"jenis_lantai\":\"Kayu\\/Papan\",\"jumlah\":2},{\"jenis_lantai\":\"Keramik\",\"jumlah\":40},{\"jenis_lantai\":\"Marmer\\/granit\",\"jumlah\":5},{\"jenis_lantai\":\"Parket\\/vinil\\/permadani\",\"jumlah\":46},{\"jenis_lantai\":\"Semen\\/bata merah\",\"jumlah\":102},{\"jenis_lantai\":\"Tanah\",\"jumlah\":2},{\"jenis_lantai\":\"Ubin\\/tegel\\/teraso\",\"jumlah\":88}],\"sens_dinding\":[{\"jenis_dinding\":\"Kayu\\/papan\\/gipsum\",\"jumlah\":29},{\"jenis_dinding\":\"Tembok\",\"jumlah\":256}],\"sens_atap\":[{\"jenis_atap\":\"Beton\",\"jumlah\":13},{\"jenis_atap\":\"Genteng\",\"jumlah\":4},{\"jenis_atap\":\"Kayu\\/Sirap\",\"jumlah\":1},{\"jenis_atap\":\"Seng\",\"jumlah\":267}],\"sens_air_minum\":[{\"sumber_air_minum\":\"Air isi ulang\",\"jumlah\":151},{\"sumber_air_minum\":\"Air kemasan bermerek\",\"jumlah\":1},{\"sumber_air_minum\":\"Leding\\/PDAM\",\"jumlah\":97},{\"sumber_air_minum\":\"Sumur bor\\/pompa\",\"jumlah\":4},{\"sumber_air_minum\":\"Sumur tak terlindung\",\"jumlah\":16},{\"sumber_air_minum\":\"Sumur terlindung\",\"jumlah\":16}],\"sens_air_mandi\":[{\"sumber_air_mandi\":\"Air isi ulang\",\"jumlah\":3},{\"sumber_air_mandi\":\"Lainnya\",\"jumlah\":5},{\"sumber_air_mandi\":\"Leding\\/PDAM\",\"jumlah\":139},{\"sumber_air_mandi\":\"Sumur bor\\/pompa\",\"jumlah\":13},{\"sumber_air_mandi\":\"Sumur tak terlindung\",\"jumlah\":52},{\"sumber_air_mandi\":\"Sumur terlindung\",\"jumlah\":72}],\"sens_penerangan\":[{\"sumber_penerangan\":\"Listrik PLN dengan meteran\",\"jumlah\":279},{\"sumber_penerangan\":\"Listrik PLN tanpa meteran\",\"jumlah\":1},{\"sumber_penerangan\":\"Listrik non-PLN\",\"jumlah\":5}],\"sens_bahan_bakar\":[{\"bahan_bakar\":\"Gas Elpiji 3 kg\",\"jumlah\":1},{\"bahan_bakar\":\"Kayu Bakar\",\"jumlah\":3},{\"bahan_bakar\":\"Lainnya\",\"jumlah\":1},{\"bahan_bakar\":\"Minyak Tanah\",\"jumlah\":280}]}','2026-08-03 18:37:32','2026-08-03 18:37:32'),(14,2,'sensus_ekonomi','{\"sens_lapangan_usaha\":[{\"lapangan_usaha\":\"A. Pertanian, Kehutanan, dan Perikanan\",\"jumlah\":4},{\"lapangan_usaha\":\"C. Industri Pengolahan\",\"jumlah\":6},{\"lapangan_usaha\":\"G. Perdagangan Besar dan Eceran\",\"jumlah\":12},{\"lapangan_usaha\":\"H. Transportasi dan Pergudangan\",\"jumlah\":5},{\"lapangan_usaha\":\"I. Penyediaan Akomodasi dan Makan Minum\",\"jumlah\":2},{\"lapangan_usaha\":\"S. Aktivitas Jasa Lainnya\",\"jumlah\":4}],\"sens_izin_usaha\":[{\"jenis_izin\":\"Lainnya\",\"jumlah\":1},{\"jenis_izin\":\"NIB\",\"jumlah\":1}]}','2026-08-03 18:37:32','2026-08-03 18:37:32'),(15,2,'sensus_kependudukan','{\"sens_kelompok_umur\":[{\"kelompok_umur\":\"0\\u20134 tahun\",\"laki_laki\":29,\"perempuan\":19},{\"kelompok_umur\":\"10\\u201314 tahun\",\"laki_laki\":58,\"perempuan\":48},{\"kelompok_umur\":\"15\\u201319 tahun\",\"laki_laki\":56,\"perempuan\":48},{\"kelompok_umur\":\"20\\u201324 tahun\",\"laki_laki\":46,\"perempuan\":52},{\"kelompok_umur\":\"25\\u201329 tahun\",\"laki_laki\":44,\"perempuan\":42},{\"kelompok_umur\":\"30\\u201334 tahun\",\"laki_laki\":36,\"perempuan\":39},{\"kelompok_umur\":\"35\\u201339 tahun\",\"laki_laki\":46,\"perempuan\":44},{\"kelompok_umur\":\"40\\u201344 tahun\",\"laki_laki\":37,\"perempuan\":41},{\"kelompok_umur\":\"45\\u201349 tahun\",\"laki_laki\":39,\"perempuan\":31},{\"kelompok_umur\":\"50\\u201354 tahun\",\"laki_laki\":23,\"perempuan\":25},{\"kelompok_umur\":\"55\\u201359 tahun\",\"laki_laki\":16,\"perempuan\":15},{\"kelompok_umur\":\"5\\u20139 tahun\",\"laki_laki\":51,\"perempuan\":51},{\"kelompok_umur\":\"60\\u201364 tahun\",\"laki_laki\":17,\"perempuan\":16},{\"kelompok_umur\":\"65+ tahun\",\"laki_laki\":21,\"perempuan\":36}],\"sens_status_perkawinan\":[{\"status_perkawinan\":\"Belum kawin\",\"laki_laki\":276,\"perempuan\":196},{\"status_perkawinan\":\"Cerai hidup\",\"laki_laki\":3,\"perempuan\":14},{\"status_perkawinan\":\"Cerai mati\",\"laki_laki\":10,\"perempuan\":41},{\"status_perkawinan\":\"Kawin\\/nikah\",\"laki_laki\":206,\"perempuan\":230}],\"sens_baca_tulis\":[{\"kemampuan\":\"Bisa membaca dan menulis\",\"laki_laki\":270,\"perempuan\":269},{\"kemampuan\":\"Bisa membaca saja\",\"laki_laki\":26,\"perempuan\":18},{\"kemampuan\":\"Bisa menulis saja\",\"laki_laki\":28,\"perempuan\":22},{\"kemampuan\":\"Tidak bisa keduanya\",\"laki_laki\":23,\"perempuan\":33}],\"sens_partisipasi_sekolah\":[{\"partisipasi\":\"Masih sekolah\",\"jumlah\":186},{\"partisipasi\":\"Tidak bersekolah lagi\",\"jumlah\":482},{\"partisipasi\":\"Tidak\\/belum pernah sekolah\",\"jumlah\":21}],\"sens_ijazah\":[{\"ijazah\":\"D1\\/D2\\/D3\",\"jumlah\":9},{\"ijazah\":\"D4\\/S1\\/Profesi\",\"jumlah\":61},{\"ijazah\":\"S2\\/S3\",\"jumlah\":1},{\"ijazah\":\"SD\\/sederajat\",\"jumlah\":253},{\"ijazah\":\"SMA\\/sederajat\",\"jumlah\":281},{\"ijazah\":\"SMP\\/sederajat\",\"jumlah\":128},{\"ijazah\":\"Tidak punya ijazah SD\",\"jumlah\":90}],\"sens_status_pekerjaan\":[{\"jenis_pekerjaan\":\"ASN\\/TNI\\/Polri\\/BUMN\",\"jumlah\":19},{\"jenis_pekerjaan\":\"Berusaha dibantu buruh\",\"jumlah\":3},{\"jenis_pekerjaan\":\"Berusaha sendiri\",\"jumlah\":379},{\"jenis_pekerjaan\":\"Buruh\\/karyawan\\/swasta\",\"jumlah\":30},{\"jenis_pekerjaan\":\"Pekerja bebas\",\"jumlah\":59},{\"jenis_pekerjaan\":\"Pekerja keluarga\\/tidak dibayar\",\"jumlah\":73}]}','2026-08-03 18:37:32','2026-08-03 18:37:32');
/*!40000 ALTER TABLE `data_desa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desa`
--

DROP TABLE IF EXISTS `desa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desa` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desa_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desa`
--

LOCK TABLES `desa` WRITE;
/*!40000 ALTER TABLE `desa` DISABLE KEYS */;
INSERT INTO `desa` VALUES (2,'Jamilu','Jamilu','2026-07-30 16:13:24','2026-07-30 16:13:24');
/*!40000 ALTER TABLE `desa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dokumen_desas`
--

DROP TABLE IF EXISTS `dokumen_desas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dokumen_desas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_dokumen` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `nama_file` varchar(255) NOT NULL,
  `is_publik` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokumen_desas`
--

LOCK TABLES `dokumen_desas` WRITE;
/*!40000 ALTER TABLE `dokumen_desas` DISABLE KEYS */;
INSERT INTO `dokumen_desas` VALUES (1,'Profil Desa Jamilu',NULL,'dokumen_desa/01KYKB1H1K5QP32X82KBNZAHSZ.docx',1,'2026-07-27 18:07:10','2026-07-27 18:07:10');
/*!40000 ALTER TABLE `dokumen_desas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infographics`
--

DROP TABLE IF EXISTS `infographics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infographics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infographics`
--

LOCK TABLES `infographics` WRITE;
/*!40000 ALTER TABLE `infographics` DISABLE KEYS */;
/*!40000 ALTER TABLE `infographics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenis_surat`
--

DROP TABLE IF EXISTS `jenis_surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenis_surat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_surat` varchar(255) NOT NULL,
  `kode_surat` varchar(255) NOT NULL,
  `is_aktif` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jenis_surat_kode_surat_unique` (`kode_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenis_surat`
--

LOCK TABLES `jenis_surat` WRITE;
/*!40000 ALTER TABLE `jenis_surat` DISABLE KEYS */;
INSERT INTO `jenis_surat` VALUES (1,'Surat Keterangan Tidak Mampu (SKTM)','SKTM',1,'2026-07-05 17:59:32','2026-07-05 17:59:32'),(2,'Surat Keterangan Domisili','SKD',1,'2026-07-05 17:59:32','2026-07-05 17:59:32'),(3,'Surat Keterangan Usaha (SKU)','SKU',1,'2026-07-05 17:59:32','2026-07-05 17:59:32'),(4,'Surat Keterangan Pengantar Kelakuan Baik','SKP',1,'2026-07-05 17:59:32','2026-07-05 17:59:32'),(5,'Surat Keterangan Bersih Diri','SKBD',1,'2026-07-05 17:59:32','2026-07-05 17:59:32'),(6,'Surat Keterangan Belum Menikah','SKBM',1,'2026-07-05 17:59:32','2026-07-05 17:59:32');
/*!40000 ALTER TABLE `jenis_surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2026_07_06_000001_create_main_tables',1),(5,'2026_07_28_025132_create_dokumen_desas_table',2),(6,'2026_07_29_000001_create_infographics_table',3),(7,'2026_07_31_000001_create_data_desa_tables',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengaduan`
--

DROP TABLE IF EXISTS `pengaduan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengaduan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nik_pelapor` varchar(16) NOT NULL,
  `nama_pelapor` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto_bukti` varchar(255) DEFAULT NULL,
  `status` enum('masuk','ditinjau','selesai') NOT NULL DEFAULT 'masuk',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengaduan`
--

LOCK TABLES `pengaduan` WRITE;
/*!40000 ALTER TABLE `pengaduan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pengaduan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengajuan_surat`
--

DROP TABLE IF EXISTS `pengajuan_surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengajuan_surat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nik_pemohon` varchar(16) NOT NULL,
  `nama_pemohon` varchar(255) NOT NULL,
  `no_whatsapp` varchar(20) NOT NULL,
  `jenis_surat_id` bigint(20) unsigned NOT NULL,
  `keperluan` text NOT NULL,
  `berkas_ktp_kk` varchar(255) NOT NULL,
  `nomor_surat_resmi` varchar(255) DEFAULT NULL,
  `status` enum('menunggu','diproses','selesai','ditolak') NOT NULL DEFAULT 'menunggu',
  `alasan_penolakan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pengajuan_surat_jenis_surat_id_foreign` (`jenis_surat_id`),
  CONSTRAINT `pengajuan_surat_jenis_surat_id_foreign` FOREIGN KEY (`jenis_surat_id`) REFERENCES `jenis_surat` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengajuan_surat`
--

LOCK TABLES `pengajuan_surat` WRITE;
/*!40000 ALTER TABLE `pengajuan_surat` DISABLE KEYS */;
/*!40000 ALTER TABLE `pengajuan_surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('4Hr56CMoD5b0AI56I4gN2HmqKk0fHJ2gSR4rwWIz',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.26100.8737','YTozOntzOjY6Il90b2tlbiI7czo0MDoieDdnUllmSDNvd3IwYUp2OGZPeGxFRHFyQlNLRzFvOEo5ajd4TmFReSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAxMC9kYXRhLWRlc2EiO3M6NToicm91dGUiO3M6OToiZGF0YS1kZXNhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1785826321),('k2ADs1TYuNf1EcFhYmGhReTVv8RYpw4fbKFG1XRD',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.26100.8737','YTozOntzOjY6Il90b2tlbiI7czo0MDoieVdkMXk0dDVEUUVLa1RPeERhSkRUS1F0UEw0dDJocGVVbUFaS1VOUiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwOS9kYXRhLWRlc2EiO3M6NToicm91dGUiO3M6OToiZGF0YS1kZXNhIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1785826309),('ynhzY7JdGrnsLZeOexdEKoBp3lqCwYNspz2QgXXi',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUk5OM1VyUHFtbWVMUDZHbE1mMmpqb0xHNHQwcEZXMmtEbFhjd0tKQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo3OiJiZXJhbmRhIjt9fQ==',1785826390);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','staf','kepala_desa') NOT NULL DEFAULT 'staf',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrator Bupolo','admin@bupolo.desa.id',NULL,'$2y$12$lR4toLxJBHRwjhPhItUFt.JrYbrG8XbJQG38e7EuWuLwyqdYwpALO','admin',NULL,'2026-07-05 17:59:31','2026-07-05 17:59:31'),(2,'Staf Pelayanan','staf@bupolo.desa.id',NULL,'$2y$12$VTH2eILnQcgzMoC9mrEkr.hpOFld7XU/5eMEKxrD/Ks1xzaPM6h36','staf',NULL,'2026-07-05 17:59:32','2026-07-05 17:59:32'),(3,'Kepala Desa Bupolo','kades@bupolo.desa.id',NULL,'$2y$12$qaEfmQv4tJxKxo7NqnEQLeeK1zlqmnhyqqTHPar3UlxR3Krq5Hooi','kepala_desa',NULL,'2026-07-05 17:59:32','2026-07-05 17:59:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-04 16:09:08
