go
alter trigger TongTienPhieuNhap on PhieuNhap after insert as
begin 
	update PhieuNhap set tongTien=PhieuNhap.soLuong*PhieuNhap.donGia
	from PhieuNhap
	join inserted on PhieuNhap.maPhieuNhap=inserted.maphieuNhap

	update LinhKien set giaBan=1.5*PhieuNhap.donGia
	from PhieuNhap
	join inserted on PhieuNhap.maPhieuNhap=inserted.maphieuNhap
	where LinhKien.maLinhKien=inserted.maLinhKien 
end
go
select * from PhieuNhap
select * from LinhKien
go
alter trigger TongTienPhieuXuat on PhieuXuat after insert as
begin 
	update PhieuXuat set  donGia= -1
	from PhieuXuat
	join inserted on PhieuXuat.maPhieuXuat=inserted.maPhieuXuat
	 DECLARE @tmp int;
	set @tmp=0;
	select @tmp=maPhieuXuat from PhieuXuat where donGia=-1
	update PhieuXuat set donGia=LinhKien.giaBan
	from PhieuXuat,LinhKien
	where PhieuXuat.maLinhKien=LinhKien.maLinhKien
	update PhieuXuat set tongTien=PhieuXuat.soLuong*PhieuXuat.donGia
	from PhieuXuat
	join inserted on PhieuXuat.maPhieuXuat=inserted.maPhieuXuat
end
go
select * from PhieuXuat
go
select * from LinhKien,PhieuNhap where LinhKien.maLinhKien=PhieuNhap.maLinhKien and 
alter trigger CapNhatmaGioHang on Users after insert as
begin 
	DECLARE @tmp int;
	set @tmp=0;
	insert into GioHang(thongtin)values( N'thêm tài khoản mới')
	select  @tmp = maGioHang from GioHang where thongtin=N'thêm tài khoản mới'
	update Users set maGioHang=@tmp
	from GioHang,Users
	join inserted on Users.userName=inserted.userName and Users.passWord=inserted.passWord
	where thongtin=N'Thêm tài khoản mới'
	update GioHang set thongtin=N'gán xong tài khoản'
	where thongtin=N'Thêm tài khoản mới' and maGioHang=@tmp

end
go
select COUNT(maGioHang)from GioHang
go
select *from GioHang
go
create trigger CapNhatGiaTienLinhKien on PhieuNhap after insert as
begin 
	DECLARE @tmp int;
	set @tmp=0;
	insert into GioHang(thongtin)values( N'thêm tài khoản mới')
	select  @tmp = maGioHang from GioHang where thongtin=N'thêm tài khoản mới'
	update Users set maGioHang=@tmp
	from GioHang,Users
	join inserted on Users.userName=inserted.userName and Users.passWord=inserted.passWord
	where thongtin=N'Thêm tài khoản mới'
	update GioHang set thongtin=N'gán xong tài khoản'
	where thongtin=N'Thêm tài khoản mới' and maGioHang=@tmp

end
go

select DISTINCT  top(4) LinhKien.maLinhKien,maLoaiLinhKien,maNhaCungCap,maLoaiMay, tenLinhKien,thongSoKyThuat,moTa,giaBan,thoiGianBaoHanh,img
from PhieuNhap,LinhKien 
where PhieuNhap.maLinhKien=LinhKien.maLinhKien
order by ngayThang desc
select * from LinhKien
  select LinhKien.maLinhKien,maLoaiLinhKien,maNhaCungCap,maLoaiMay,tenLinhKien,thongSoKyThuat,moTa,giaBan,thoiGianBaoHanh,img
	from LinhKien,(select top(5)  count(PhieuXuat.maPhieuXuat)as stt, PhieuXuat.maLinhKien from PhieuXuat,LinhKien where PhieuXuat.maLinhKien=LinhKien.maLinhKien
	group by  PhieuXuat.maLinhKien order by count(PhieuXuat.maPhieuXuat) desc) as s
	where LinhKien.maLinhKien=s.maLinhKien

	select DISTINCT top 10 


	select LinhKien.maLinhKien,maLoaiLinhKien,maNhaCungCap,maLoaiMay,tenLinhKien,thongSoKyThuat,moTa,giaBan,thoiGianBaoHanh,img from LinhKien, (select top(10)  count(PhieuXuat.maPhieuXuat) as stt, PhieuXuat.maLinhKien from PhieuXuat, LinhKien where PhieuXuat.maLinhKien = LinhKien.maLinhKien   group by  PhieuXuat.maLinhKien order by count(PhieuXuat.maPhieuXuat) desc) as s   where LinhKien.maLinhKien = s.maLinhKien