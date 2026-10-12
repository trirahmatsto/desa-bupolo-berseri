# Panduan Deploy — https://Jamilu-descan.bpsburu.com

Proyek: Laravel 12 + Filament + Livewire/Volt + Vite.

## Artefak di folder ini
- `bupolo_berseri.sql` — dump database lokal (17 tabel: desa, data_desa 9 kategori, users, artikel_galeri, dll)
- `deploy-bupolo-berseri.zip` — bundel proyek siap-upload (TANPA node_modules, .git, .env; **SUDAH termasuk vendor/ production** jadi tidak perlu composer di server)
- File pendukung di luar folder: `.env.production.example` (repo root), `.vscode/sftp.json`

> Catatan jaringan: jika port SSH/FTP (65002/21/22) ke server tidak bisa dijangkau dari jaringan kamu, pakai **Rute A (File Manager + Cron)** di bawah — tidak butuh SSH.
>
> STATUS TERKINI (2026-08-05): dari jaringan lokal, port SSH/FTP TERBLOKIR — pakai Rute A.
> Zip sudah berisi `.env` TERISI (APP_KEY + DB_DATABASE/USERNAME + DB_PASSWORD). Yang perlu diisi manual: MAIL_* (opsional, hanya jika kirim email).

## Syarat server
- PHP >= 8.2 (set 8.2/8.3 di hPanel)
- Ekstensi PHP: pdo_mysql, mbstring, bcmath, gd, zip, intl, openssl, fileinfo
- MySQL database
- SSH aktif (Business+)

---

## Langkah 1 — hPanel: domain & subdomain
1. hPanel -> Websites -> Add Website -> pilih **"Custom website PHP/HTML"** -> masukkan **`Jamilu-descan.bpsburu.com`** (subdomain bpsburu.com di akun yang sama, buat lewat menu Domains).
2. **Document Root**: di shared hosting tidak bisa diubah via UI (menu "Folder Index Manager" bukan itu). Dipakai trik `.htaccess` di root `public_html` yang redirect semua request ke folder `public/` (file sudah disertakan di zip).
3. Aktifkan **SSL Let's Encrypt** untuk hostname tersebut.
4. Set **PHP 8.2/8.3**; naikkan `upload_max_filesize` & `post_max_size` (mis. 20M).

## Langkah 2 — hPanel: database
1. Databases -> MySQL -> buat DB `bupolo_berseri` (catat user/password).
2. Import `bupolo_berseri.sql` via **phpMyAdmin** (Import -> pilih file -> Go).
3. Aktifkan SSH (Advanced -> SSH), catat host/user/password.

## Langkah 3 — upload file
Cara a (ekstensi): VSCode -> install **Hostinger Connector** (resmi) atau **SFTP (Natizyskunk.sftp)**.
Cara b: File Manager hPanel / FTP.
Extract isi zip **langsung ke `public_html/`** (bukan subfolder). Struktur hasilnya:
```
public_html/
├── .htaccess            <- redirect ke public/ (sudah di zip)
├── public/
├── app/ config/ routes/ ...
├── artisan  composer.json
└── ... (vendor/ diinstall via SSH)
```
**Jangan upload** `node_modules/` (sudah di-exclude di sftp.json). `.env` SUDAH TERISI di zip — tidak perlu upload terpisah.

## Langkah 4 — setup

### Rute A — tanpa SSH (File Manager + Cron) [dipakai jika port SSH terblokir]
1. hPanel -> **Files -> File Manager** -> buka `public_html/` (domain Jamilu-descan).
2. Klik tombol **Upload** -> pilih `deploy-bupolo-berseri.zip` -> setelah naik, klik kanan -> **Extract** -> hapus zip.
3. **`.env`**: sudah terisi di zip (APP_KEY + DB + DB_PASSWORD). Aktifkan "Show hidden files" di File Manager untuk melihatnya. Hanya perlu **Edit** jika mau isi `MAIL_*` (email @bpsburu.com) untuk fitur kirim email.
4. **Cron Jobs** -> tambah cron (setiap 1 menit) untuk setup sekali jalan:
```
cd /home/u639579287/domains/Jamilu-descan.bpsburu.com/public_html && php artisan storage:link && php artisan config:cache && php artisan route:cache && php artisan view:cache && chmod -R 775 storage bootstrap/cache && php artisan data-desa:fetch
```
Tunggu 1-2 menit, buka situs. Setelah sukses, **hapus cron ini**.
5. Tambah cron permanen harian:
```
* * * * * cd /home/u639579287/domains/Jamilu-descan.bpsburu.com/public_html && php artisan schedule:run >> /dev/null 2>&1
```

### Rute B — pakai SSH
Cara cepat (sudah ada skrip `setup.sh`): upload zip ke server -> extract -> jalankan:
```bash
cd ~/domains/Jamilu-descan.bpsburu.com/public_html
bash setup.sh
```
Skrip akan: composer install, buat `.env` dari template, storage:link, cache, chmod, tes fetch data.
Saat pertama kali, skrip berhenti untuk minta kamu isi `.env` (password DB + email), lalu jalankan ulang `bash setup.sh`.

Cara manual (setara dengan skrip):
```bash
cd ~/domains/Jamilu-descan.bpsburu.com/public_html

composer install --no-dev --optimize-autoloader

cp .env.production.example .env
nano .env          # isi APP_KEY, DB_*, MAIL_*, dst (lihat template)

php artisan key:generate     # hanya jika APP_KEY kosong
php artisan storage:link
php artisan config:cache
php artisan route:cache
php artisan view:cache
chmod -R 775 storage bootstrap/cache
```
Jika DB belum diimport lewat phpMyAdmin:
```bash
mysql -u <user> -p <db> < bupolo_berseri.sql
```

## Langkah 5 — cron (data desa harian 02:30)
```bash
crontab -e
```
Tambahkan:
```
* * * * * cd /home/uXXXXX/domains/Jamilu-descan.bpsburu.com/public_html && php artisan schedule:run >> /dev/null 2>&1
```

## Langkah 6 — verifikasi
- `https://Jamilu-descan.bpsburu.com` -> beranda tampil, asset https (tidak ada mixed content)
- `https://Jamilu-descan.bpsburu.com/data-desa` -> 9 Kategori, 47 tabel (makro + rincian)
- `https://Jamilu-descan.bpsburu.com/admin` -> login `admin@bupolo.desa.id` / `password` (**ganti password setelah masuk**)
- `https://Jamilu-descan.bpsburu.com/profil-desa-dan-infografis` -> dokumen & infografis (tes storage:link)
- Jalankan sekali: `php artisan data-desa:fetch` -> harus muncul `✓ Jamilu: 9 kategori, 47 tabel`

## Troubleshooting
- **500/blank**: `cat storage/logs/laravel.log`; sementara set `APP_DEBUG=true` di .env.
- **Gambar tak muncul**: pastikan `storage:link` sudah jalan & isi `storage/app/public` ter-upload.
- **APP_KEY invalid**: hapus lalu `php artisan key:generate`.
- **Mixed content**: pastikan APP_URL https + SSL aktif, hapus cache: `php artisan config:cache`.
