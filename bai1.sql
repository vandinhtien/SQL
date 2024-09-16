-- câu 1.1
select *
from SINHVIEN
where HoDem like N'Lê%'

-- câu 1.2
select *
from SINHVIEN
where HoDem like N'%Thị%'

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
select MaSinhVien, CONCAT(HoDem,' ',ten) as 'Họ Và Tên', NgaySinh, GioiTinh, GioiTinh, TenLop, MaLop 
from SINHVIEN, LOP





