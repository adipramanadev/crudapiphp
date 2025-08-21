# crudapiphp — Belajar CRUD API dengan PHP & Flutter

Repository ini adalah project Flutter sederhana dengan backend API berbasis PHP. Cocok untuk belajar bagaimana cara melakukan operasi **CRUD** (Create, Read, Update, Delete) melalui API di Flutter.

---

##  Struktur Proyek

```

crudapiphp/
├── android/
├── ios/
├── lib/             ← Kode utama Flutter (UI, model, service)
├── web/
├── api/             ← (Tambahkan jika ada) file PHP: getdata.php, add.php, update.php, delete.php
├── README.md        ← Dokumentasi ini
└── pubspec.yaml

````

---

##  Apa yang Akan Kamu Pelajari

| Topik                     | Penjelasan Singkat |
|--------------------------|---------------------|
| Backend PHP (REST API)   | Menyediakan endpoint CRUD (MySQL + PHP) |
| Flutter HTTP + JSON      | Mengakses dan parsing respon API |
| Model & Service Layer    | Struktur data (model) dan komunikasi network (service) |
| UI di Flutter            | Menampilkan data dalam daftar, menambah, edit, dan hapus data |
| Error Handling UI        | Menampilkan error dan loading di UI (FutureBuilder, retry, dsb) |

---

##  Quick Start

1. **Clone repo & checkout branch `devBook`:**  
   ```bash
   git clone <URL> 
   cd crudapiphp
   git checkout devBook
````

2. **Setup Backend API:**

   * Letakkan file `getdata.php`, `add.php`, `update.php`, `delete.php`, dan `conn.php` di dalam folder `api/` (jika belum ada).
   * Gunakan XAMPP atau server lokal dan pastikan API berfungsi (tes via Postman atau browser).

3. **Jalankan Flutter App:**

   ```bash
   flutter pub get
   flutter run
   ```



---

## Tips Tambahan

* **CORS untuk Flutter Web:**
  Jika kamu pakai Flutter Web, tambahkan header berikut di tiap file PHP:

  ```php
  header('Access-Control-Allow-Origin: *');
  header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
  header('Access-Control-Allow-Headers: Content-Type, Authorization');
  if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') exit;
  ```

* **HTTP vs HTTPS**:
  Pastikan `http://` tetap konsisten—ketidaksesuaian protokol dapat menyebabkan client exception (mixed content).

* **Debugging:**
  Aktifkan `error_reporting(E_ALL)` untuk lebih mudah menemukan bug di PHP.

---

## Tujuan

Setelah memahami project ini, kamu akan bisa:

* Membuat REST API CRUD sederhana dengan PHP & MySQL
* Kelola state di Flutter untuk berinteraksi dengan API
* Optimasi UI/UX minimal (loading, error handling, refresh)


---

