-- CÂU 1: Liệt kê MaDatPhong, MaDV, SoLuong của tất cả các dịch vụ có số lượng lớn hơn 3 và nhỏ hơn 10
SELECT MaDatPhong, MaDV, SoLuong
FROM CHI_TIET_SU_DUNG_DV
WHERE SoLuong > 3 AND SoLuong < 10

-- CÂU 2: Hiển thị TenKH của những khách hàng có tên bắt đầu là một trong 
-- các ký tự “H”, “N”, “M” và có độ dài tối đa là 20 ký tự
SELECT TenKH
FROM KHACH_HANG
WHERE TenKH LIKE 'N%' OR TenKH LIKE 'H%' OR TenKH LIKE 'M%'
AND LEN(TenKH) <= 20;

-- CÂU 3: Hiển thị TenKH của tất cả các khách hàng có trong hệ thống, TenKH
-- nào trùng nhau thì chỉ hiển thị một lần. Sinh viên sử dụng hai cách khác
-- nhau để thực hiện yêu cầu trên, mỗi cách sẽ được 0,5 điểm.
SELECT DISTINCT TenKH
FROM KHACH_HANG

SELECT TenKH
FROM KHACH_HANG
GROUP BY TenKH

-- CÂU 4: Hiển thị MaDV, TenDV, DonViTinh, DonGia của những dịch vụ đi kèm
-- có DonViTinh là “lon” và có DonGia lớn hơn 10,000 VNĐ hoặc những dịch vụ
-- đi kèm có DonViTinh là “Cai” và có DonGia nhỏ hơn 5,000 VNĐ.
SELECT MaDV, TenDV, DonViTinh, DonGia
FROM DICH_VU_DI_KEM
WHERE (DonViTinh LIKE 'lon' AND DonGia > '10,000') OR (DonViTinh LIKE 'cai' AND DonGia < '5,000')

-- CÂU 5: Hiển thị MaDatPhong, MaPhong, LoaiPhong, SoKhachToiDa,
-- GiaPhong, MaKH, TenKH, SoDT, NgayDat, GioBatDau, GioKetThuc,
-- MaDichVu, SoLuong, DonGia của những đơn đặt phòng có năm đặt phòng là
-- “2016”, “2017” và đặt những phòng có giá phòng > 50,000 VNĐ/ 1 giờ.
SELECT MaDatPhong, DAT_PHONG.MaPhong, PHONG.LoaiPhong, SoKhachToiDa, PHONG.GiaPhong, DAT_PHONG.MaKH, KHACH_HANG.TenKH, KHACH_HANG.SoDT, NgayDat, GioBatDau, GioKetThuc
FROM DAT_PHONG INNER JOIN PHONG ON PHONG.MaPhong = DAT_PHONG.MaPhong
			   INNER JOIN KHACH_HANG ON KHACH_HANG.MaKH = DAT_PHONG.MaKH
WHERE (YEAR(NgayDat) = '2016' OR YEAR(NgayDat) = '2017') AND GiaPhong > '50,000'

-- CÂU 6: Hiển thị MaDatPhong, MaPhong, LoaiPhong, GiaPhong, TenKH,
-- NgayDat, TongTienHat, TongTienSuDungDichVu, TongTienThanhToan tương
-- ứng với từng mã đặt phòng có trong bảng DAT_PHONG. Những đơn đặt
-- phòng nào không sử dụng dịch vụ đi kèm thì cũng liệt kê thông tin
-- của đơn đặt phòng đó ra.

