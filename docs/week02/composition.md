# Rasionalisasi Struktur (Minggu 02)

## Layar: WatchlistScreen
Layar utama dari aplikasi. Layar ini bertindak sebagai *God Widget* yang memegang seluruh *state* (_dramas, _searchController, _query) untuk memastikan adanya *single source of truth*. Tidak ada *child widget* yang menyimpan *state*-nya sendiri jika *state* tersebut perlu dibagikan (*shared*).

### Widget yang Di-ekstrak:

**1. WatchlistHeader**
- **Trigger:** Readability (Keterbacaan Kode).
- **What it owns:** Tidak ada (Stateless).
- **What it reports upward:** Tidak ada. Widget ini murni menangani *layout* statis untuk judul dan deskripsi layar guna mengurangi penumpukan kode pada *method* build utama.

**2. WatchlistSearch**
- **Trigger:** Readability (Keterbacaan Kode).
- **What it owns:** Tidak ada. Widget ini menerima _query dan TextEditingController dari *parent*.
- **What it reports upward:** Melaporkan perubahan teks melalui *callback* onChanged dan aksi pembersihan teks via *callback* onClear.

**3. DramaCard**
- **Trigger:** Readability & Reuse (Keterbacaan & Penggunaan Ulang).
- **What it owns:** Tidak ada. Widget ini menerima objek Drama untuk menampilkan data.
- **What it reports upward:** Melaporkan saat pengguna menekan tombol tambah episode melalui *callback* onAddEpisode, sehingga layar *parent* yang mengeksekusi perubahan *state*-nya.

**4. EmptyWatchlist**
- **Trigger:** Readability (Keterbacaan Kode).
- **What it owns:** Tidak ada.
- **What it reports upward:** Melaporkan saat pengguna ingin menghapus pencarian melalui *callback* onClear.