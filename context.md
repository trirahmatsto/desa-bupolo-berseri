# Context — Web Desa Bupolo Berseri

Dokumen konteks untuk 3 website desa. Dipakai sebagai referensi saat mengubah profil tiap desa satu per satu.

> PERHATIAN: file ini berisi kredensial. Jangan upload ke repo publik / bagikan ke pihak lain.

---

## Umum

- **Stack**: Laravel 12 + Filament 3 + Livewire/Volt + Vite (Tailwind)
- **Arsitektur**: multi-instance (clone per desa) — tiap desa punya instalasi Laravel + DB sendiri
- **Data statistik**: satu project Supabase, dipisah per kolom `desa`; `php artisan data-desa:fetch` tarik otomatis per nama desa
- **Alur clone/deploy**: `tools/clone-desa.ps1` (buat proyek baru) + `deploy/README-deploy.md`
- **Deploy server**: shared hosting Hostinger, tanpa SSH CLI crontab → cron wajib via hPanel

### Cara mengubah profil desa (file yang wajib diedit)

| File | Isi |
|---|---|
| `resources/views/livewire/public/beranda.blade.php` | sambutan, nama Kepala Desa, hero text |
| `resources/views/livewire/public/profil-desa.blade.php` | sejarah, visi-misi, susunan aparat + foto |
| `resources/views/components/layouts/public.blade.php` | nama desa, alamat, telp, email, copyright, meta description |
| `resources/views/livewire/public/profil-desa-dan-infografis.blade.php` | teks header halaman |
| `resources/views/livewire/public/artikel.blade.php` | teks header halaman |
| `app/Providers/Filament/AdminPanelProvider.php` | brandName panel admin |
| `public/images/*.png|jpg` + `village_banner.png` | foto aparat & banner (nama file mengikuti pola, mis. `Kades <Desa>.png`) |
| `database/seeders/AdminSeeder.php` | email akun admin/staf/kades |

Setelah edit: upload file yang berubah ke server, lalu jalankan `php artisan view:cache` (dan `config:cache` jika menyentuh .env).

---

## Web 1 — Jamilu

- **URL**: https://jamilu-descan.bpsburu.com
- **Status**: LIVE — konten asli (sejarah, aparat, foto Jamilu)
- **Folder lokal**: `C:\xampp\htdocs\bupolo-berseri`
- **Remote path**: `/home/u639579287/domains/jamilu-descan.bpsburu.com/public_html`
- **DB**: `u639579287_bupolo_berseri` / user `u639579287_trirahmat` / pass `Bupolo8104berseri`
- **Admin**: `admin@bupolo.desa.id` / `password` (default — ganti setelah login)
- **Cron**: sudah di hPanel (schedule:run)

## Web 2 — Savana Jaya

- **URL**: https://savanajaya-descan.bpsburu.com
- **Status**: LIVE — konten masih PLACEHOLDER (teks & foto Jamilu) → PERLU GANTI sesuai profil Savana Jaya
- **Folder lokal**: `C:\xampp\htdocs\savana-jaya`
- **Remote path**: `/home/u639579287/domains/savanajaya-descan.bpsburu.com/public_html`
- **DB**: `u639579287_savana_jaya` / user `u639579287_tri` / pass `Bupolo8104berseri`
- **Admin**: `admin@savana.desa.id` / `password` (default — ganti setelah login)
- **Cron**: BELUM di hPanel (tambahkan: `cd /home/u639579287/domains/savanajaya-descan.bpsburu.com/public_html && php artisan schedule:run >> /dev/null 2>&1`)

## Web 3 — Kaki Air

- **URL**: https://kakiair-descan.bpsburu.com
- **Status**: menunggu DNS (propagasi ±1 hari, A record di zone bpsburu.com) — konten PLACEHOLDER → PERLU GANTI
- **Folder lokal**: `C:\xampp\htdocs\kaki-air`
- **Remote path**: `/home/u639579287/domains/kakiair-descan.bpsburu.com/public_html`
- **DB**: `u639579287_kaki_air` / user `u639579287_trirs` / pass `Bupolo8104berseri`
- **Admin**: `admin@kaki-air.desa.id` / `password` (default — ganti setelah login)
- **Cron**: sudah dibuat di hPanel

---

## Akses

### SSH
- Host: `147.93.80.25` (kadang harus ganti jaringan — port terblokir dari sebagian ISP)
- Port: `65002` | User: `u639579287` | Pass: `Bupolo8104berseri!`
- Login: `ssh -p 65002 u639579287@147.93.80.25` (butuh SSH_ASKPASS untuk non-interaktif)

### Supabase (data statistik)
- URL: `https://mofyetjalfukgacppuwb.supabase.co`
- Key: ada di `config/data-desa.php` / `.env` (`SUPABASE_URL`, `SUPABASE_ANON_KEY`)

### Catatan
- Password DB juga tersimpan di `.env` tiap proyek (`DB_PASSWORD`)
- `storage:link` artisan GAGAL di Hostinger (fungsi PHP `exec()` di-disable) → symlink dibuat manual: `ln -s storage/app/public public/storage`
- `unzip` di server butuh `UNZIP_DISABLE_ZIPBOMB_DETECTION=TRUE` untuk zip yang dibuat dari PowerShell
