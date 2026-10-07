USE praktikum_web_2401020039;

INSERT INTO program_studi (nama_prodi) VALUES
    ('Teknik Informatika'),
    ('Sistem Informasi');

INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id) VALUES
    ('2401020039', 'Ikhbal Maulana',
     'ikhbal@example.com', 20, 1),
    ('2401020012', 'Nur Aisyah',
     'aisyah@example.com', 19, 1),
    ('2401030007', 'Rizky Hidayat',
     'rizky@example.com', 21, 2),
    ('2401030099', 'Data Sementara',
     'sementara@example.com', 18, 2);

UPDATE mahasiswa
SET email = 'ikhbal.maulana@example.com'
WHERE nim = '2401020039';

DELETE FROM mahasiswa WHERE nim = '2401030099';

SELECT m.nim, m.nama, m.email, m.usia,
       p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
    ON p.id = m.program_studi_id
ORDER BY m.nim;