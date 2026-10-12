<?php

use Livewire\Volt\Component;
use Livewire\Attributes\Layout;
use App\Models\ArtikelGaleri;

new #[Layout('components.layouts.public')] class extends Component {
    public function with(): array
    {
        return [
            'beritas' => ArtikelGaleri::berita()->latest()->take(3)->get(),
        ];
    }
}; ?>
{{-- Halaman BERANDA (/) - hero slider, statistik, profil singkat, fasilitas, galeri, berita. --}}

<div>
    <!-- Hero Section -->
    <div class="relative bg-emerald-900 overflow-hidden">
        <div class="absolute inset-0 opacity-20 bg-cover bg-center" style="background-image: url('{{ asset('images/village_banner.png') }}');"></div>
        <div class="absolute inset-0 bg-gradient-to-r from-emerald-950/90 to-emerald-900/50"></div>

        <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-24 md:py-32 flex flex-col items-start justify-center">
            <span class="inline-flex items-center px-3 py-1 rounded-full text-xs font-semibold bg-emerald-500/20 text-emerald-300 border border-emerald-500/30 mb-6 uppercase tracking-wider">
                Selamat Datang di Portal Resmi
            </span>
            <h1 class="text-4xl sm:text-5xl md:text-6xl font-extrabold text-white tracking-tight leading-tight max-w-3xl">
                Layanan Digital & Informasi Publik <span class="bg-gradient-to-r from-emerald-400 to-teal-300 bg-clip-text text-transparent">Desa Jamilu</span>
            </h1>
            <p class="mt-6 text-lg text-emerald-100/90 max-w-2xl leading-relaxed">
                Ajukan permohonan surat administrasi secara online, sampaikan aduan secara langsung, dan ikuti perkembangan berita serta dokumentasi pembangunan desa kami secara cepat dan mudah.
            </p>
            <div class="mt-10 flex flex-wrap gap-4">
                <a href="{{ route('layanan-surat') }}" class="px-8 py-4 rounded-xl bg-gradient-to-r from-emerald-500 to-teal-400 hover:from-emerald-600 hover:to-teal-500 text-white font-bold shadow-lg shadow-emerald-900/50 hover:shadow-xl hover:-translate-y-0.5 transition-all">
                    Ajukan Surat Online
                </a>
                <a href="{{ route('pengaduan') }}" class="px-8 py-4 rounded-xl bg-white/10 hover:bg-white/20 text-white font-semibold border border-white/20 backdrop-blur-sm transition-all">
                    Laporkan Pengaduan
                </a>
            </div>
        </div>
    </div>

    <!-- Quick Services Grid -->
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 -mt-12 relative z-10">
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
            <!-- Service 1 -->
            <div class="bg-white rounded-2xl p-8 shadow-xl border border-slate-100 hover:shadow-2xl transition-all duration-300 group">
                <div class="w-14 h-14 rounded-xl bg-emerald-50 text-emerald-600 flex items-center justify-center mb-6 group-hover:bg-emerald-600 group-hover:text-white transition-all duration-300">
                    <svg class="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" /></svg>
                </div>
                <h3 class="text-xl font-bold text-slate-900 mb-3">Administrasi Mandiri</h3>
                <p class="text-slate-500 text-sm leading-relaxed mb-4">Warga dapat mengisi data diri dan mengajukan berbagai jenis surat keterangan secara daring tanpa perlu antre di kantor desa.</p>
                <a href="{{ route('layanan-surat') }}" class="inline-flex items-center text-sm font-bold text-emerald-600 hover:text-emerald-700">
                    Ajukan Surat <svg class="w-4 h-4 ml-1 group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" /></svg>
                </a>
            </div>
            <!-- Service 2 -->
            <div class="bg-white rounded-2xl p-8 shadow-xl border border-slate-100 hover:shadow-2xl transition-all duration-300 group">
                <div class="w-14 h-14 rounded-xl bg-emerald-50 text-emerald-600 flex items-center justify-center mb-6 group-hover:bg-emerald-600 group-hover:text-white transition-all duration-300">
                    <svg class="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" /></svg>
                </div>
                <h3 class="text-xl font-bold text-slate-900 mb-3">Pengaduan Online</h3>
                <p class="text-slate-500 text-sm leading-relaxed mb-4">Adanya keluhan sarana prasarana atau pelayanan? Laporkan secara aman dan pantau status penyelesaian dari aparat desa.</p>
                <a href="{{ route('pengaduan') }}" class="inline-flex items-center text-sm font-bold text-emerald-600 hover:text-emerald-700">
                    Kirim Aduan <svg class="w-4 h-4 ml-1 group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" /></svg>
                </a>
            </div>
            <!-- Service 3 -->
            <div class="bg-white rounded-2xl p-8 shadow-xl border border-slate-100 hover:shadow-2xl transition-all duration-300 group">
                <div class="w-14 h-14 rounded-xl bg-emerald-50 text-emerald-600 flex items-center justify-center mb-6 group-hover:bg-emerald-600 group-hover:text-white transition-all duration-300">
                    <svg class="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" /></svg>
                </div>
                <h3 class="text-xl font-bold text-slate-900 mb-3">Keterbukaan Informasi</h3>
                <p class="text-slate-500 text-sm leading-relaxed mb-4">Dapatkan informasi terbaru mengenai program desa, pengumuman penting, dan liputan kegiatan serta galeri pembangunan desa.</p>
                <a href="{{ route('artikel') }}" class="inline-flex items-center text-sm font-bold text-emerald-600 hover:text-emerald-700">
                    Baca Berita <svg class="w-4 h-4 ml-1 group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" /></svg>
                </a>
            </div>
        </div>
    </div>

    <!-- Greeting Section (Sambutan Kades) -->
    <div class="py-20 md:py-28 bg-white mt-12">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-12 items-center">
                <!-- Foto Kades -->
                <div class="lg:col-span-5 relative">
                    <div class="absolute -inset-4 bg-emerald-100 rounded-3xl -rotate-3"></div>
                    <img src="{{ asset('images/Kades Jamilu.png') }}" alt="Kepala Desa Jamilu" class="relative rounded-3xl shadow-xl w-full max-w-md mx-auto object-cover aspect-[4/5] bg-emerald-50">
                </div>
                <!-- Isi Sambutan -->
                <div class="lg:col-span-7">
                    <span class="text-xs font-bold text-emerald-600 tracking-wider uppercase">Sambutan Kepala Desa</span>
                    <h2 class="text-3xl sm:text-4xl font-extrabold text-slate-900 mt-2 mb-6">
                        Mewujudkan Pelayanan Desa yang Cepat, Tepat, dan Transparan
                    </h2>
                    <div class="space-y-4 text-slate-600 leading-relaxed">
                        <p>
                            Assalamu'alaikum Warahmatullahi Wabarakatuh, Salam Sejahtera untuk kita semua.
                        </p>
                        <p>
                            Selamat datang di Portal Pelayanan Digital Desa Jamilu. Melalui website ini, kami berkomitmen untuk menghadirkan kemudahan pelayanan administrasi bagi seluruh warga desa secara modern. Kami memahami pentingnya efisiensi waktu, karena itulah kami merancang sistem pengajuan surat online yang bisa diakses kapan saja dan di mana saja.
                        </p>
                        <p>
                            Meskipun kami belum mengintegrasikan database kependudukan secara otomatis demi privasi warga, aparat desa kami akan memverifikasi berkas KTP dan KK secara manual dengan teliti dan penuh integritas untuk memastikan keabsahan setiap layanan yang diajukan. Mari bersama-sama kita dukung kemajuan digitalisasi desa demi Bupolo yang lebih berseri dan maju.
                        </p>
                    </div>
                    <div class="mt-8 border-t border-slate-100 pt-6">
                        <h4 class="text-lg font-bold text-slate-900">Haris Buton, SE.</h4>
                        <p class="text-sm text-slate-500 font-medium">Kepala Desa Jamilu</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Latest News Section -->
    <div class="py-20 bg-slate-50 border-t border-b border-slate-100">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-end mb-12">
                <div>
                    <span class="text-xs font-bold text-emerald-600 tracking-wider uppercase">Informasi & Berita</span>
                    <h2 class="text-3xl font-extrabold text-slate-900 mt-2">Liputan Terbaru Desa Kami</h2>
                </div>
                <a href="{{ route('artikel') }}" class="hidden sm:inline-flex items-center px-5 py-2.5 rounded-xl bg-white border border-slate-200 text-sm font-bold text-slate-700 hover:bg-slate-50 shadow-sm transition-all">
                    Lihat Semua Berita
                </a>
            </div>

            @if($beritas->isEmpty())
                <div class="bg-white rounded-2xl p-12 text-center border border-slate-200 shadow-sm">
                    <svg class="w-12 h-12 text-slate-400 mx-auto mb-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 20H5a2 2 0 01-2-2V6a2 2 0 012-2h10a2 2 0 012 2v1m2 13a2 2 0 01-2-2V7m2 13a2 2 0 002-2V9a2 2 0 00-2-2h-2m-4-3H9M7 16h6M7 8h6v4H7V8z" /></svg>
                    <p class="text-slate-500 font-medium">Belum ada berita yang diterbitkan saat ini.</p>
                </div>
            @else
                <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                    @foreach($beritas as $berita)
                        <article class="bg-white rounded-2xl overflow-hidden border border-slate-100 hover:shadow-xl transition-all duration-300 flex flex-col justify-between group">
                            <div>
                                <div class="relative aspect-video overflow-hidden bg-slate-100">
                                    @if($berita->foto_sampul)
                                        <img src="{{ asset('storage/' . $berita->foto_sampul) }}" alt="{{ $berita->judul }}" class="object-cover w-full h-full group-hover:scale-105 transition-transform duration-500">
                                    @else
                                        <div class="w-full h-full flex items-center justify-center bg-gradient-to-tr from-emerald-800 to-emerald-600 text-emerald-200 text-3xl font-bold">
                                            B
                                        </div>
                                    @endif
                                    <span class="absolute top-4 left-4 inline-flex items-center px-3 py-1 rounded-full text-xs font-semibold bg-emerald-500 text-white shadow-sm">
                                        Berita
                                    </span>
                                </div>
                                <div class="p-6">
                                    <span class="text-xs font-semibold text-slate-400 block mb-2">{{ $berita->created_at->format('d M Y') }}</span>
                                    <h3 class="text-lg font-bold text-slate-900 mb-3 leading-snug hover:text-emerald-600 transition-colors">
                                        {{ $berita->judul }}
                                    </h3>
                                    <p class="text-slate-500 text-sm line-clamp-3 leading-relaxed">
                                        {!! strip_tags($berita->konten) !!}
                                    </p>
                                </div>
                            </div>
                            <div class="px-6 pb-6 pt-2">
                                <a href="{{ route('artikel') }}" class="inline-flex items-center text-sm font-bold text-emerald-600 hover:text-emerald-700">
                                    Baca Selengkapnya <svg class="w-4 h-4 ml-1" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" /></svg>
                                </a>
                            </div>
                        </article>
                    @endforeach
                </div>
            @endif

            <div class="mt-8 text-center sm:hidden">
                <a href="{{ route('artikel') }}" class="inline-flex items-center justify-center w-full px-5 py-3 rounded-xl bg-white border border-slate-200 text-sm font-bold text-slate-700 hover:bg-slate-50">
                    Lihat Semua Berita
                </a>
            </div>
        </div>
    </div>
</div>
