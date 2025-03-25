create database quanlybanhang1
use quanlybanhang1

create table KHACHHANG(
makh char(4) primary key,
hoten varchar(50),
dchi text,
sodt char(10),
ngsinh date, 
doanhso decimal(15.2),
ngdk date
)
create table NhanVien(
manv char(4) primary key,
hoten varchar (50),
ngvl date,
sodt char (10)
)
create table sanpham(
masp char(4) primary key,
tensp varchar (50),
dvt varchar (20),
nuocsx varchar(20),
gia decimal (15.2)
)
create table hoadon(
sohd int(4) primary key,
nghd date,
makh char(4),
manv char(4),
trigia decimal(15.2)
)
create table cthd(
sohd int(4),
masp char (4),
sl int(4),
primary key (sohd, masp)
)
alter table hoadon add constraint hoadonmakh foreign key (makh)
 references khachhang(makh);
alter table hoadon add constraint hoadonmanv foreign key (manv) 
references nhanvien(manv)
alter table cthd add constraint hoadonsohd foreign key (sohd)
references hoadon(sohd)
alter table cthd add constraint sanphammasp foreign key (masp)
references sanpham(masp)

INSERT INTO KHACHHANG VALUES ('KH01','NGUYEN VAN  A','731 TRAN HUNG DAO ,Q5,TPHCM','08823451','1960-10-22', 13060000, '2006-06-22');
INSERT INTO KHACHHANG VALUES ('KH02','TRAN NGOC HAN','23/5 NGUYEN TRAI ,Q5,TPHCM','0908256478','1974/04/03',280000,'2006/07/30');
INSERT INTO KHACHHANG VALUES ('KH03','TRAN NGOC LINH','45 NGUYEN CANH CHAN ,Q1,TPHCM','0938776266','1980/06/12',3860000,'2006/08/05');
INSERT INTO KHACHHANG VALUES ('KH04','TRAN MINH LONG','50/34 LE DAI HANH,Q10,TPHCM','0917325476','1965/03/09',250000,'2006/10/02');
INSERT INTO KHACHHANG VALUES ('KH05','LE NHAT MINH','34 TRUONG DINH,Q3,TPHCM','08246108','1950/03/10',21000,'2006/10/28');
INSERT INTO KHACHHANG VALUES ('KH06','LE HOAI THUONG','227 NGUYEN VAN CU,Q5,TPHCM','08631738','1981/12/31',915000,'2006/11/24');
INSERT INTO KHACHHANG VALUES ('KH07','NGUYEN VAN  TAM','32/3 TRAN BINH TRONG,Q5,TPHCM','0916783565','1971/04/06',12500,'2006/12/01');
INSERT INTO KHACHHANG VALUES ('KH08','PHAN THI THANH','45/2 AN DUONG VUONG,Q5,TPHCM','093843756','1971/01/10',365000,'2006/12/13');
INSERT INTO KHACHHANG VALUES ('KH09','LE HA VINH','873 LE HONG PHONG,Q5,TPHCM','08654763','1979/09/03',70000,'2007/01/14');
INSERT INTO KHACHHANG VALUES ('KH10','HA DUY LAP','34/34B NGUYEN TRAI,Q1,TPHCM','08768904','1983/05/02',67500,'2007/01/16');

insert into  NhanVien values ('NV01','Nguyen Nhu Nhut','2006/4/13','0927345678');
insert into  NhanVien values ('NV02','Le Thi Phi Yen','2006/4/21','0987567390');
insert into  NhanVien values ('NV03','Nguyen Van B','2006/4/27','0997047382');
insert into  NhanVien values ('NV04','Ngo Thanh Tuan','2006/6/24','0913758498');
insert into  NhanVien values ('NV05','Nguyen Thi Truc Thanh','0918590387','2006/7/20','0918590387');

insert into SanPham values ('BC01','But chi','cay','Singapore',3000);
insert into SanPham values ('BC02','But chi','cay','Singapore',5000);
insert into SanPham values ('BC03','But chi','cay','Viet Nam',3500);
insert into SanPham values ('BC04','But chi','hop','Viet Nam',30000);
insert into SanPham values ('BB01','But bi','cay','Viet Nam',5000);
insert into SanPham values ('BB02','But bi','cay','Trung Quoc',7000);
insert into SanPham values ('BB03','But bi','hop','Thai Lan',100000);
insert into SanPham values ('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500);
insert into SanPham values ('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500);
insert into SanPham values ('TV03','Tap 100 giay tot','quyen','Viet Nam',3000);
insert into SanPham values ('TV04','Tap 200 giay tot','quyen','Viet Nam',5500);
insert into SanPham values ('TV05','Tap 100 trang','chuc','Viet Nam',23000);
insert into SanPham values ('TV06','Tap 200 trang','chuc','Viet Nam',53000);
insert into SanPham values ('TV07','Tap 100 trang','chuc','Trung Quoc',34000);
insert into SanPham values ('ST01','So tay 500 trang','quyen','Trung Quoc',40000);
insert into SanPham values ('ST02','So tay loai 1','quyen','Viet Nam',55000);
insert into SanPham values ('ST03','So tay loai 2','quyen','Viet Nam',51000);
insert into SanPham values ('ST04','So tay','quyen','Thai Lan',55000);
insert into SanPham values ('ST05','So tay mong','quyen','Thai Lan',20000);
insert into SanPham values ('ST06','Phan viet bang','hop','Viet Nam',5000);
insert into SanPham values ('ST07','Phan khong bui','hop','Viet Nam',7000);
insert into SanPham values ('ST08','Bong bang','cai','Viet Nam',1000);
insert into SanPham values ('ST09','But long','cay','Viet Nam',5000);
insert into SanPham values ('ST10','But long','cay','Trung Quoc',7000);

insert into HoaDon values (1001,'2006/07/23','KH01','NV01',320000);
insert into HoaDon values (1002,'2006/08/12','KH01','NV02',840000);
insert into HoaDon values (1003,'2006/08/23','KH02','NV01',100000);
insert into HoaDon values (1004,'2006/09/01','KH02','NV01',180000);
insert into HoaDon values (1005,'2006/10/20','KH01','NV02',3800000);
insert into HoaDon values (1006,'2006/10/16','KH01','NV03',2430000);
insert into HoaDon values (1007,'2006/10/28','KH03','NV03',510000);
insert into HoaDon values (1008,'2006/10/28','KH01','NV03',440000); 
insert into HoaDon values (1009,'2006/10/28','KH03','NV04',200000);
insert into HoaDon values (1010,'2006/11/01','KH01','NV01',5200000);
insert into HoaDon values (1011,'2006/11/04','KH04','NV03',250000);
insert into HoaDon values (1012,'2006/11/30','KH05','NV03',21000);
insert into HoaDon values (1013,'2006/12/12','KH06','NV01',5000);
insert into HoaDon values (1014,'2006/12/31','KH03','NV02',3150000);
insert into HoaDon values (1015,'2007/01/01','KH06','NV01',910000);
insert into HoaDon values (1016,'2007/01/01','KH07','NV02',12500);
insert into HoaDon values (1017,'2007/01/02','KH08','NV03',35000);
insert into HoaDon values (1018,'2007/01/13','KH08','NV03',330000);
insert into HoaDon values (1019,'2007/01/13','KH01','NV03',30000);
insert into HoaDon values (1020,'2007/01/14','KH09','NV04',70000);
insert into HoaDon values (1021,'2007/01/16','KH10','NV03',67500);
insert into HoaDon values (1022,'2007/01/16',Null,'NV03',7000);
insert into HoaDon values (1023,'2007/01/17',Null,'NV01',330000);
select * FROM KHACHHANG
insert into cthd values (1001, 'TV02', 10);
insert into cthd values (1001, 'ST01', 5);
insert into cthd values (1001, 'BC01', 5);
insert into cthd values (1001, 'BC02', 10);
insert into cthd values (1001, 'ST08', 10);

insert into cthd values (1003, 'TV02', 10);
insert into cthd values (1004, 'TV02', 10);
insert into cthd values (1005, 'TV02', 10);
insert into cthd values (1006, 'TV02', 10);
insert into cthd values (1007, 'TV02', 10);
insert into cthd values (1008, 'TV02', 10);
insert into cthd values (1009, 'TV02', 10);
insert into cthd values (1010, 'TV02', 10);
insert into cthd values (1011, 'TV02', 10);
insert into cthd values (1012, 'TV02', 10);
insert into cthd values (1013, 'TV02', 10);
insert into cthd values (1014, 'TV02', 10);
insert into cthd values (1015, 'TV02', 10);
insert into cthd values (1016, 'TV02', 10);
insert into cthd values (1017, 'TV02', 10);
insert into cthd values (1018, 'TV02', 10);
insert into cthd values (1019, 'TV02', 10);
insert into cthd values (1020, 'TV02', 10);
insert into cthd values (1021, 'TV02', 10);
insert into cthd values (1022, 'TV02', 10);
insert into cthd values (1023, 'TV02', 10);
insert into cthd values (1024, 'TV02', 10);
insert into cthd values (1025, 'TV02', 10);
insert into cthd values (1026, 'TV02', 10);
insert into cthd values (1027, 'TV02', 10);
insert into cthd values (1028, 'TV02', 10);
insert into cthd values (1029, 'TV02', 10);
insert into cthd values (1030, 'TV02', 10);
insert into cthd values (1031, 'TV02', 10);
insert into cthd values (1032, 'TV02', 10);
insert into cthd values (1033, 'TV02', 10);
insert into cthd values (1034, 'TV02', 10);
insert into cthd values (1035, 'TV02', 10);
insert into cthd values (1036, 'TV02', 10);
insert into cthd values (1601, 'TV02', 10);
insert into cthd values (1071, 'TV02', 10);
insert into cthd values (1001, 'TV02', 10);
insert into cthd values (1031, 'TV02', 10);
insert into cthd values (1041, 'TV02', 10);
insert into cthd values (1081, 'TV02', 10);
insert into cthd values (1001, 'TV02', 10);
insert into cthd values (1401, 'TV02', 10);
insert into cthd values (1021, 'TV02', 10);
insert into cthd values (1601, 'TV02', 10);
insert into cthd values (1111, 'TV02', 10);
insert into cthd values (1004, 'TV02', 10);
insert into cthd values (1101, 'TV02', 10);
insert into cthd values (1201, 'TV02', 10);
insert into cthd values (1301, 'TV02', 10);
insert into cthd values (1401, 'TV02', 10);
insert into cthd values (1051, 'TV02', 10);
insert into cthd values (1601, 'TV02', 10);
insert into cthd values (1801, 'TV02', 10);
