use master 
go
create database ABC
go
use ABC
go
create table GV(
  magv nchar(10) not null primary key,
  tengv nvarchar(20),
  sodt nchar(10)
)
create table Lop(
  malop nchar(10) not null primary key,
  tenlop nvarchar(20),
  phong nchar(10),
  magv nchar(10),
  constraint fk_lop_gv foreign key(magv) references gv(magv)
)
create table sv(
  masv nchar(10) not null primary key,
  tensv nvarchar(20) not null,
  ngaysinh date,
  gioitinh nchar(10),
  que nvarchar(20),
  malop nchar(10),
  constraint fk_sv_lop foreign key(malop) references lop(malop)
)
insert into gv values('GV1',N'??ng th? Nhung','09827262')
insert into gv values('GV2',N'Tr?n Mai Linh','09454545')
insert into gv values('GV3',N'Tr?n Kim Tuy?n','09833362')

insert into lop values('L01','KHMT','303A8','GV2')
insert into lop values('L02','KTPM','303A8','GV1')
insert into lop values('L03','KHMT','303A8','GV2')
insert into lop values('L04','HTTT','303A8','GV3')

insert into sv values('SV01',N'Tu?n Em','03-02-2003',N'Nam',N'Hà L?i','L01')
insert into sv values('SV02',N'Tr?n Nam','08-12-2004',N'N?',N'Hà Nam','L02')
insert into sv values('SV03',N'Lê Bê','03-05-2002',N'Nam',N'Hà L?i','L01')
insert into sv values('SV04',N'Minh Tùng','09-02-2001',N'N?',N'Hà Tây','L03')
insert into sv values('SV05',N'Hà thu','03-04-2002',N'Nam',N'Hà B?c','L02')

select * from gv
select * from lop
select * from sv