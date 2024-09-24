-- câu 1.1
select *
from SINHVIEN
where HoDem like N'Lê%'

-- câu 1.2
select *
from SINHVIEN
where HoDem like N'% Thị %'

-- câu 1.3
select *
from SINHVIEN
where HoDem like N'% Văn %'

-- câu 1.4
select *
from SINHVIEN
where HoDem like N'Dư %' or Ten LIKE N'V%'

-- câu 1.5
select MaSinhVien, CONCAT(HoDem,' ',ten) as 'Họ Và Tên', NgaySinh, GioiTinh, NoiSinh
from SINHVIEN
where NoiSinh like N'Huế%'

-- câu 1.6
select MaSinhVien, CONCAT(HoDem,' ',ten) as 'Họ Và Tên', NgaySinh, GioiTinh, GioiTinh, TenLop
from SINHVIEN, LOP
where month(NgaySinh) between 3 and 8 and YEAR(NgaySinh) = 1992

-- câu 1.7
select MaSinhVien, CONCAT(HoDem, ' ', Ten) as 'Họ Và Tên', NgaySinh, GioiTinh, TenLop, SINHVIEN.MaLop
from SINHVIEN, LOP
where SINHVIEN.MaLop = LOP.MaLop and GioiTinh = '0' or month(NgaySinh) between 5 and 11;

-- cau 1.8
select MaSinhVien, CONCAT(HoDem, ' ', Ten) as 'Họ Và Tên', NgaySinh, GioiTinh, TenLop, SINHVIEN.MaLop
from SINHVIEN, LOP
where SINHVIEN.MaLop = LOP.MaLop
and (HoDem not like N'Lê %' and HoDem not like N'Dư %' and HoDem not like N'Võ %' and HoDem not like N'Nguyễn %');


-- cau 1.9
select MaSinhVien, CONCAT(HoDem, ' ', Ten) as 'Họ Và Tên', NgaySinh, GioiTinh, TenLop, SINHVIEN.MaLop
from SINHVIEN, LOP
where SINHVIEN.MaLop = LOP.MaLop 
and (HoDem like N'Lê %')
and (Ten like N'Nga' or Ten like N'Lý');

-- cau 1.10
select *
from SINHVIEN
where NoiSinh = '';

-- cau 1.11: tạo truy vấn để hiển thị tổng số sinh viên theo từng lớp (lưu ý: những lớp chưa có sinh viên cũng được hiển thị), bao gồm những thông tin: mã lớp,
select LOP.MaLop, lop.TenLop, count(SINHVIEN.MaSinhVien) as tongsosinhvien
from LOP
left join SINHVIEN on LOP.MaLop = SINHVIEN.MaLop
group by LOP.MaLop, LOP.TenLop


















