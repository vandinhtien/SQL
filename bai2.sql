-- câu 1
declare @a int = 10
declare @b int = 5
print 'phép công: '+ cast(@a + @b as varchar)
print 'phép trừ: '+ cast(@a - @b as varchar)
print 'phép nhân: '+ cast(@a * @b as varchar)
if @b <> 0
	print 'phép chia: '+ cast(@a / @b as varchar)
else
	print'không thể chia 0'

-- câu 2
declare @thang int 
declare @quy int

set @thang = month(GETDATE());
set @quy = case
	when @thang between 1 and 3 then 1
	when @thang between 4 and 6 then 2
	when @thang between 7 and 7 then 3
	else 4
end;
print'thang hien tai: ' + cast(@thang as varchar)
print'quy hien tai: '+ cast(@quy as varchar)

-- câu 3
DECLARE @n INT = 10; 
DECLARE @s1 INT = 0;
DECLARE @s2 float = 0;
DECLARE @i INT = 1;

while @i <= @n
begin
		set @s1 = @s1 + @i;
		set @s2 = @s2 + 1.0/@i
		set @i = @i + 1;
end;
print'tong s1 = ' + cast(@s1 as varchar)
print'tong s2 = ' + cast(@s2 as varchar)

-- câu 4
/*declare @noisinh nvarchar(250) = 'Huế'
declare @maSinhVien nvarchar(10)
declare @hoDem nvarchar(45)
declare @ten nvarchar(15)
declare @ngaySinh date
select @maSinhVien = MaSinhVien, @hoDem = HoDem, @ten = Ten, @ngaySinh = NgaySinh
from SINHVIEN
where NoiSinh = @noisinh

PRINT 'Mã sinh viên: ' + @maSinhVien;
PRINT 'Họ đệm: ' + @hoDem;
PRINT 'Tên: ' + @ten;
PRINT 'Ngày sinh: ' + CAST(@ngaySinh AS NVARCHAR);
*/

-- Khai báo biến
DECLARE @noisinh NVARCHAR(250) = 'Huế';
DECLARE @maSinhVien NVARCHAR(10);
DECLARE @hoDem NVARCHAR(45);
DECLARE @ten NVARCHAR(15);
DECLARE @ngaySinh DATE;
DECLARE @noiSinhSinhVien NVARCHAR(250);

SELECT TOP 1 @maSinhVien = MaSinhVien, 
             @hoDem = HoDem, 
             @ten = Ten, 
             @ngaySinh = NgaySinh,
             @noiSinhSinhVien = NoiSinh  
FROM SINHVIEN
WHERE NoiSinh LIKE '%' + @noisinh + '%';  
PRINT 'Mã sinh viên: ' + @maSinhVien;
PRINT 'Họ đệm: ' + @hoDem;
PRINT 'Tên: ' + @ten;
PRINT 'Ngày sinh: ' + CAST(@ngaySinh AS NVARCHAR);
PRINT 'Nơi sinh: ' + @noiSinhSinhVien; 

-- câu 5
-- Khai báo biến table @v_sinhvien với các cột giống bảng SINHVIEN
DECLARE @v_sinhvien TABLE (
    MaSinhVien NVARCHAR(10),
    HoDem NVARCHAR(45),
    Ten NVARCHAR(15),
    NgaySinh DATE,
    NoiSinh NVARCHAR(250)
);

INSERT INTO @v_sinhvien (MaSinhVien, HoDem, Ten, NgaySinh, NoiSinh)
SELECT MaSinhVien, HoDem, Ten, NgaySinh, NoiSinh
FROM SINHVIEN
WHERE MONTH(NgaySinh) BETWEEN 1 AND 6;
SELECT *
FROM @v_sinhvien
WHERE HoDem LIKE 'Nguyễn%' OR YEAR(NgaySinh) = 1991;
SELECT * FROM @v_sinhvien;

-- câu 6
select *
into #v_sinhvien_dk
from SINHVIEN
where MaSinhVien like N'KD%' or GioiTinh = '1'
SELECT * FROM #v_sinhvien_dk;

UPDATE #v_sinhvien_kd
SET NoiSinh = 'Quảng Bình'
WHERE hoDem LIKE N'Lê%';









