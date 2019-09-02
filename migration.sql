CREATE TABLE GURU (
	nip char(4) not null,
	nama_guru varchar(20),
CONSTRAINT guru_pk PRIMARY KEY (nip) ENABLE
);

CREATE ADMIN (
	id_admin(4) not null,
	
CONSTRAINT admin_pk PRIMARY KEY (admin) ENABLE
);

CREATE KELAS(
	id_kelas char(4) not null,
	mapel varchar(20),
CONSTRAINT kelas_pk PRIMARY KEY (id_kelas) ENABLE
);

CREATE TABLE SISWA (
	nis char(5) not null,
	nama_siswa varchar(20),
	no_telp char(13),
	tanggal_lahir date,
CONSTRAINT siswa_pk PRIMARY KEY (nis) ENABLE
);

CREATE TABLE ALUMNI (
	id_alumni char(6) not null,
	nama_alumni varchar(20),
	tahun_lulus varchar(5),
CONSTRAINT admin_pk PRIMARY KEY (id_alumni) ENABLE
);

CREATE TABLE MATERI (
	id_materi char(3) not null,
	file_materi MEDIUMBLOOB not null,
	nip char(4) not null,
CONSTRAINT materi_pk PRIMARY KEY (id_materi) ENABLE,
FOREIGN KEY (nip) REFERENCE guru (nip) ON DELETE CASCADE
);

CREATE TABLE PESAN (
	id_chatroom char(3) not null,
	nip char(4) not null,
	nis char(4) not null,
	chat varchar(100),
CONSTRAINT pesan_pk PRIMARY KEY (id_chatroom) ENABLE,
FOREIGN KEY (nip) REFERENCE guru (nip) ON DELETE CASCADE,
FOREIGN KEY (nis) REFERENCE siswa (nis) ON DELETE CASCADE
);

CREATE TABLE TUGAS (
	id_tugas char(3) not null,
	file tugas MEDIUMBLOOB not null,
	nip char(4) not null,
	
CONSTRAINT tugas_pk PRIMARY KEY (id_tugas) ENABLE,
FOREIGN KEY (nip) REFERENCE guru (nip) ON DELETE CASCADE
);





INSERT INTO GURU VALUES('G001','Jajang');
INSERT INTO GURU VALUES('G002','Neneng Lilis');
INSERT INTO GURU VALUES('G003','Dede');
INSERT INTO GURU VALUES('G004','Talimin');
INSERT INTO GURU VALUES('G005','Ritaning');
INSERT INTO GURU VALUES('G006','Srihartati');

INSERT INTO ADMIN VALUES('AD01','Asep');
INSERT INTO ADMIN VALUES('AD02','Rohimat');

INSERT INTO KELAS VALUES('MIPA01','Biologi');
INSERT INTO KELAS VALUES('MIPA02','Fisika');
INSERT INTO KELAS VALUES('MIPA03','Matematika');
INSERT INTO KELAS VALUES('BHS01','Bahasa Inggris');
INSERT INTO KELAS VALUES('BHS02','Bahasa Indonesia');
INSERT INTO KELAS VALUES('ISO01','Sejarah');


INSERT INTO SISWA VALUES('S0001','Edemia','0876544234',(to_date('05/08/1997','dd/mm/yyyy')));
INSERT INTO SISWA VALUES('S0002','Haikal','0876676234',(to_date('13/04/1998','dd/mm/yyyy')));
INSERT INTO SISWA VALUES('S0003','Melbournita','08765448907',(to_date('08/08/1998','dd/mm/yyyy')));
INSERT INTO SISWA VALUES('S0004','Asma','08747879874',(to_date('09/05/1998','dd/mm/yyyy')));





INSERT INTO ALUMNI VALUES('A00001','Jaja','1980');
INSERT INTO ALUMNI VALUES('A00002','Amir','1998');
INSERT INTO ALUMNI VALUES('A00003','Anda','1999');
INSERT INTO ALUMNI VALUES('A00004','Wulansari','1999');


SELECT * FROM Guru;
SELECT * FROM Siswa;
SELECT * FROM Kelas;
SELECT * FROM Alumni;
SELECT id_chatroom, nip, nis, chat FROM pesan;
