create database javashop
use javashop
go 
CREATE TABLE tbl_account 
(
  id_account varchar(50)  NOT NULL,
  username varchar(50) NOT NULL,
  password varchar(50) NOT NULL,
  status int NOT NULL
) 

INSERT INTO tbl_account (id_account, username, password, status) VALUES ('EM01', 'VanThang', 'vanthang', 1)
INSERT INTO tbl_account (id_account, username, password, status) VALUES('EM02', 'XuanThang', 'xuanthang', 1)
INSERT INTO tbl_account (id_account, username, password, status) VALUES('EM03', 'ChiThien', 'chithien', 1)



CREATE TABLE tbl_brand (
  id_brand varchar(50) NOT NULL,
  name varchar(50) NOT NULL
)

INSERT INTO tbl_brand (id_brand, name) VALUES('BR1640534951452', 'CoolMate')
INSERT INTO tbl_brand (id_brand, name) VALUES('BR1640534998209', 'BJ')
INSERT INTO tbl_brand (id_brand, name) VALUES('BR1640621183186', 'BK')

CREATE TABLE tbl_category (
  id_category varchar(50) NOT NULL,
  name varchar(50) NOT NULL
) 
INSERT INTO tbl_category (id_category, name) VALUES ('CA01', 'Áo')
INSERT INTO tbl_category (id_category, name) VALUES('CA02', 'Quần')

CREATE TABLE tbl_categorychild (
  id_categorychild varchar(50) NOT NULL,
  id_category varchar(50) NOT NULL,
  name varchar(50) NOT NULL
) 

INSERT INTO tbl_categorychild (id_categorychild, id_category, name) VALUES('CC001', 'CA01', 'Áo thun')
INSERT INTO tbl_categorychild (id_categorychild, id_category, name) VALUES('CC02', 'CA01', 'Áo sơ mi')
INSERT INTO tbl_categorychild (id_categorychild, id_category, name) VALUES('CC1640534755730', 'CA02', 'Quần dài')
INSERT INTO tbl_categorychild (id_categorychild, id_category, name) VALUES('CC1640534793284', 'CA02', 'Quần lửng')

CREATE TABLE tbl_customer (
  id_customer varchar(50) NOT NULL,
  fullname varchar(50) NOT NULL,
  createdate date NOT NULL,
  point int NOT NULL DEFAULT 0,
  email varchar(20) DEFAULT NULL,
  address varchar(50) DEFAULT NULL,
  phone varchar(50) DEFAULT NULL
) 
INSERT INTO tbl_customer (id_customer, fullname, createdate, point, email, address, phone) VALUES ('CU1640535729418', 'VanThang', '2021-12-26', 335, 'vanthang@gmail.com', 'HCM', '0333630301')
INSERT INTO tbl_customer (id_customer, fullname, createdate, point, email, address, phone) VALUES('CU1640621278509', 'XuanThang', '2021-12-27', 340, 'xuanthang@gmail.com', 'HCM', '12312313');

CREATE TABLE tbl_employee (
  id_employee varchar(50) NOT NULL,
  id_position varchar(50) NOT NULL,
  fullname varchar(50) NOT NULL,
  birthday date NOT NULL,
  address varchar(100) NOT NULL,
  phone varchar(20) NOT NULL,
  email varchar(100) NOT NULL,
  image varchar(20) NOT NULL,
  cmnd varchar(20) NOT NULL,
  gender varchar(10) NOT NULL
)
INSERT INTO tbl_employee (id_employee, id_position, fullname, birthday, address, phone, email, image, cmnd, gender) VALUES ('EM01', 'p1', 'VanThang', '2001-12-27', 'Nghe An', '0333630301', 'vanthang@gmail.com', '123', '12312312313123123', 'Nam')
INSERT INTO tbl_employee (id_employee, id_position, fullname, birthday, address, phone, email, image, cmnd, gender) VALUES('EM02', 'p1', 'XuanThang', '2001-01-01', 'Binh Thuan', '0123456788', 'xuanthang@gmail.com', 'abc', '12312321312', 'Nam')
INSERT INTO tbl_employee (id_employee, id_position, fullname, birthday, address, phone, email, image, cmnd, gender) VALUES('EM03', 'p1', 'ChiThien', '2001-01-01', 'Phu Yen', '0912312', 'chithien@gmail.com', 'abc', '123123123', 'Nam')
INSERT INTO tbl_employee (id_employee, id_position, fullname, birthday, address, phone, email, image, cmnd, gender) VALUES('EM04', 'p1', 'PhucToan', '2001-01-01', 'HCM', '0912312', 'phuctoan@gmail.com', 'abc', '123123123', 'Nam')



CREATE TABLE tbl_order (
  id_order varchar(50) NOT NULL,
  id_customer varchar(50) NOT NULL,
  id_voucher varchar(50) NOT NULL,
  id_employee varchar(50) NOT NULL,
  totalprice float NOT NULL,
  date date NOT NULL
) 
INSERT INTO tbl_order (id_order, id_customer, id_voucher, id_employee, totalprice, date) VALUES ('OR1640619547251', 'CU1640535729418', 'VC1640534625092', 'EM01', 268000, '2021-12-27')
INSERT INTO tbl_order (id_order, id_customer, id_voucher, id_employee, totalprice, date) VALUES ('OR1640621277398', 'CU1640621278509', 'VC1640534625092', 'EM01', 272000, '2021-12-27')

CREATE TABLE tbl_order_item (
  id_order varchar(50) NOT NULL,
  id_product varchar(50) NOT NULL,
  quantity int NOT NULL,
  price float NOT NULL
) 
INSERT INTO tbl_order_item (id_order, id_product, quantity, price) VALUES ('OR1640619547251', 'PR1640619150209', 1, 135000)
INSERT INTO tbl_order_item (id_order, id_product, quantity, price) VALUES('OR1640619547251', 'PR1640619188733', 1, 200000)
INSERT INTO tbl_order_item (id_order, id_product, quantity, price) VALUES('OR1640621277398', 'PR1640621209542', 2, 170000)

CREATE TABLE tbl_permission (
  id_permission varchar(50)  NOT NULL,
  name varchar(50)  NOT NULL
)

INSERT INTO tbl_permission (id_permission, name) VALUES('PE01', 'Quản lý bán hàng')
INSERT INTO tbl_permission (id_permission, name) VALUES('PE02', 'Quản lý sản phẩm')
INSERT INTO tbl_permission (id_permission, name) VALUES('PE03', 'Quản lý danh mục')
INSERT INTO tbl_permission (id_permission, name) VALUES('PE04', 'Quản lý nhà cung cấp')
INSERT INTO tbl_permission (id_permission, name) VALUES('PE05', 'Quản lý nhập hàng')
INSERT INTO tbl_permission (id_permission, name) VALUES('PE06', 'Quản lý khuyến mãi')
INSERT INTO tbl_permission (id_permission, name) VALUES('PE07', 'Quản lý hóa đơn')
INSERT INTO tbl_permission (id_permission, name) VALUES('PE08', 'Quản lý nhân viên')
INSERT INTO tbl_permission (id_permission, name) VALUES('PE09', 'Quản lý khách hàng')
INSERT INTO tbl_permission (id_permission, name) VALUES('PE10', 'Quản lý quyền')
INSERT INTO tbl_permission (id_permission, name) VALUES('PE11', 'Quản lý thống kê')

CREATE TABLE tbl_position (
  id_position varchar(50)  NOT NULL,
  name varchar(50)  NOT NULL
) 
INSERT INTO tbl_position (id_position, name) VALUES('p1', 'Quản lý')
INSERT INTO tbl_position (id_position, name) VALUES('p2', 'Nhân viên kho')
INSERT INTO tbl_position (id_position, name) VALUES('p3', 'Nhân viên kinh doanh')

CREATE TABLE tbl_pos_permission (
  id_permission varchar(50)  NOT NULL,
  id_position varchar(50)  NOT NULL
) 
--select*from tbl_pos_permission
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE01', 'p1')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE01', 'p3')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE02', 'p1')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE02', 'p3')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE03', 'p1')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE03', 'p3')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE04', 'p1')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE05', 'p1')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE05', 'p2')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE06', 'p1')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE06', 'p3')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE07', 'p1')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE07', 'p3')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE08', 'p1')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE09', 'p1')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE09', 'p3')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE10', 'p1')
INSERT INTO tbl_pos_permission (id_permission, id_position) VALUES('PE11', 'p1')

CREATE TABLE tbl_product (
  id_product varchar(50) NOT NULL,
  id_brand varchar(50) NOT NULL,
  id_categorychild varchar(50) NOT NULL,
  name varchar(100) NOT NULL,
  quantity int NOT NULL,
  price float DEFAULT NULL,
  image varchar(100) NOT NULL,
  status int NOT NULL DEFAULT 1
) 

INSERT INTO tbl_product (id_product, id_brand, id_categorychild, name, quantity, price, image, status) VALUES ('PR1640619150209', 'BR1640534951452', 'CC001', 'Áo thun Cool', 59, 150000, '10.jpg', 1)
INSERT INTO tbl_product (id_product, id_brand, id_categorychild, name, quantity, price, image, status) VALUES('PR1640619188733', 'BR1640534998209', 'CC02', 'Áo sơ mi BJ', 49, 200000, '25.jpg', 1)
INSERT INTO tbl_product (id_product, id_brand, id_categorychild, name, quantity, price, image, status) VALUES('PR1640621183186', 'BR1640621183186', 'CC1640534755730', 'Quần dài BK', 100, 300000, '35.jpg', 1)
INSERT INTO tbl_product (id_product, id_brand, id_categorychild, name, quantity, price, image, status) VALUES('PR1640621209542', 'BR1640534951452', 'CC02', 'Áo sơ mi hoa hòe', 28, 170000, '38.jpg', 1)

CREATE TABLE tbl_product_sale (
  id_product varchar(50) NOT NULL,
  salepercent float NOT NULL,
  startdate date NOT NULL,
  enddate date NOT NULL
) 
INSERT INTO tbl_product_sale (id_product, salepercent, startdate, enddate) VALUES('PR1640619150209', 0.1, '2021-12-26', '2022-01-08')

CREATE TABLE tbl_supplier (
  id_supplier varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  address varchar(100) NOT NULL
) 
INSERT INTO tbl_supplier (id_supplier, name, address) VALUES('SU01', 'Nhà máy Á Châu', 'Trung Quốc')
INSERT INTO tbl_supplier (id_supplier, name, address) VALUES('SU02', 'Nhà máy Thượng Hải', 'Trung Quốc')

CREATE TABLE tbl_voucher (
  id_voucher varchar(50) NOT NULL,
  code varchar(10) NOT NULL,
  discountpercent float NOT NULL,
  startdate date NOT NULL,
  enddate date NOT NULL
) 
INSERT INTO tbl_voucher (id_voucher, code, discountpercent, startdate, enddate) VALUES('VC1640534596143', 'Null', 0, '2020-01-01', '2099-01-01')
INSERT INTO tbl_voucher (id_voucher, code, discountpercent, startdate, enddate) VALUES('VC1640534625092', 'UUDAI', 0.2, '2021-01-01', '2022-12-12')

CREATE TABLE tbl_warehousereceipt (
  id_warehousereceipt varchar(50) NOT NULL,
  id_supplier varchar(50) NOT NULL,
  id_employee varchar(50) NOT NULL,
  date timestamp NOT NULL,-- DEFAULT current_timestamp,
  totalprice float NOT NULL
) 

INSERT INTO tbl_warehousereceipt (id_warehousereceipt, id_supplier, id_employee, date, totalprice) VALUES ('WA1640619120579', 'SU01', 'EM01', '2021-12-26 17:00:00', 12500000)
INSERT INTO tbl_warehousereceipt (id_warehousereceipt, id_supplier, id_employee, date, totalprice) VALUES('WA1640619837606', 'SU01', 'EM01', '2021-12-26 17:00:00', 1100000)
INSERT INTO tbl_warehousereceipt (id_warehousereceipt, id_supplier, id_employee, date, totalprice) VALUES('WA1640621144981', 'SU01', 'EM01', '2021-12-26 17:00:00', 19500000)


CREATE TABLE tbl_warehousereceipt_detail (
  id_warehousereceipt varchar(50) NOT NULL,
  id_product varchar(50) NOT NULL,
  amount int NOT NULL,
  price float NOT NULL
) 

INSERT INTO tbl_warehousereceipt_detail (id_warehousereceipt, id_product, amount, price) VALUES ('WA1640619120579', 'PR1640619150209', 50, 100000)
INSERT INTO tbl_warehousereceipt_detail (id_warehousereceipt, id_product, amount, price) VALUES('WA1640619120579', 'PR1640619188733', 50, 150000)
INSERT INTO tbl_warehousereceipt_detail (id_warehousereceipt, id_product, amount, price) VALUES('WA1640619837606', 'PR1640619150209', 10, 110000)
INSERT INTO tbl_warehousereceipt_detail (id_warehousereceipt, id_product, amount, price) VALUES('WA1640621144981', 'PR1640621183186', 100, 150000)
INSERT INTO tbl_warehousereceipt_detail (id_warehousereceipt, id_product, amount, price) VALUES('WA1640621144981', 'PR1640621209542', 30, 150000)

ALTER TABLE tbl_account
  ADD PRIMARY KEY (id_account);

ALTER TABLE tbl_brand
  ADD PRIMARY KEY (id_brand);

ALTER TABLE tbl_category
  ADD PRIMARY KEY (id_category);

ALTER TABLE tbl_categorychild
  ADD PRIMARY KEY (id_categorychild,id_category)
 
ALTER TABLE tbl_customer
  ADD PRIMARY KEY (id_customer);

--
-- Indexes for table tbl_employee
--
ALTER TABLE tbl_employee
  ADD PRIMARY KEY (id_employee);

--
-- Indexes for table tbl_order
--
ALTER TABLE tbl_order
  ADD PRIMARY KEY (id_order,id_voucher,id_customer,id_employee)
  

--
-- Indexes for table tbl_order_item
--
ALTER TABLE tbl_order_item
  ADD PRIMARY KEY (id_order,id_product)
  

--
-- Indexes for table tbl_permission
--
ALTER TABLE tbl_permission
  ADD PRIMARY KEY (id_permission);

--
-- Indexes for table tbl_position
--
ALTER TABLE tbl_position
  ADD PRIMARY KEY (id_position);

--
-- Indexes for table tbl_pos_permission
--
ALTER TABLE tbl_pos_permission
  ADD PRIMARY KEY (id_permission,id_position)
 

--
-- Indexes for table tbl_product
--
ALTER TABLE tbl_product
  ADD PRIMARY KEY (id_product,id_brand,id_categorychild)
  

--
-- Indexes for table tbl_product_sale
--
ALTER TABLE tbl_product_sale
  ADD PRIMARY KEY (id_product);

--
-- Indexes for table tbl_supplier
--
ALTER TABLE tbl_supplier
  ADD PRIMARY KEY (id_supplier);

--
-- Indexes for table tbl_voucher
--
ALTER TABLE tbl_voucher
  ADD PRIMARY KEY (id_voucher);

--
-- Indexes for table tbl_warehousereceipt
--
ALTER TABLE tbl_warehousereceipt
  ADD PRIMARY KEY (id_warehousereceipt,id_employee,id_supplier)
 
--
-- Indexes for table tbl_warehousereceipt_detail
--
ALTER TABLE tbl_warehousereceipt_detail
  ADD PRIMARY KEY (id_warehousereceipt,id_product)
 


--
ALTER TABLE tbl_categorychild
  ADD CONSTRAINT tbl_categorychild_ibfk_1 FOREIGN KEY (id_category) REFERENCES tbl_category (id_category);

--
-- Constraints for table tbl_employee
--
ALTER TABLE tbl_employee
  ADD CONSTRAINT tbl_employee_ibfk_1 FOREIGN KEY (id_employee) REFERENCES tbl_account (id_account);

--
-- Constraints for table tbl_order
--
ALTER TABLE tbl_order ADD CONSTRAINT tbl_order_ibfk_1 FOREIGN KEY (id_voucher) REFERENCES tbl_voucher (id_voucher)
ALTER TABLE tbl_order  ADD CONSTRAINT tbl_order_ibfk_2 FOREIGN KEY (id_customer) REFERENCES tbl_customer (id_customer)
ALTER TABLE tbl_order ADD CONSTRAINT tbl_order_ibfk_3 FOREIGN KEY (id_employee) REFERENCES tbl_employee (id_employee)

--
-- Constraints for table tbl_order_item
--
ALTER TABLE tbl_order_item
  ADD CONSTRAINT tbl_order_item_ibfk_1 FOREIGN KEY (id_order) REFERENCES tbl_order (id_order)
 ALTER TABLE tbl_order_item ADD CONSTRAINT tbl_order_item_ibfk_2 FOREIGN KEY (id_product) REFERENCES tbl_product (id_product)

--
-- Constraints for table tbl_pos_permission
--
ALTER TABLE tbl_pos_permission  ADD CONSTRAINT tbl_pos_permission_ibfk_1 FOREIGN KEY (id_permission) REFERENCES tbl_permission (id_permission)
ALTER TABLE tbl_pos_permission  ADD CONSTRAINT tbl_pos_permission_ibfk_2 FOREIGN KEY (id_position) REFERENCES tbl_position (id_position)

--
-- Constraints for table tbl_product
--
ALTER TABLE tbl_product  ADD CONSTRAINT tbl_product_ibfk_1 FOREIGN KEY (id_brand) REFERENCES tbl_brand (id_brand)
ALTER TABLE tbl_product  ADD CONSTRAINT tbl_product_ibfk_2 FOREIGN KEY (id_categorychild) REFERENCES tbl_categorychild (id_categorychild)

--
-- Constraints for table tbl_product_sale
--
ALTER TABLE tbl_product_sale
  ADD CONSTRAINT tbl_product_sale_ibfk_1 FOREIGN KEY (id_product) REFERENCES tbl_product (id_product);

--
-- Constraints for table tbl_warehousereceipt
--
ALTER TABLE tbl_warehousereceipt
  ADD CONSTRAINT tbl_warehousereceipt_ibfk_1 FOREIGN KEY (id_employee) REFERENCES tbl_employee (id_employee)

ALTER TABLE tbl_warehousereceipt ADD CONSTRAINT tbl_warehousereceipt_ibfk_2 FOREIGN KEY (id_supplier) REFERENCES tbl_supplier (id_supplier)

--
-- Constraints for table tbl_warehousereceipt_detail
--
ALTER TABLE tbl_warehousereceipt_detail  ADD CONSTRAINT tbl_warehousereceipt_detail_ibfk_1 FOREIGN KEY (id_product) REFERENCES tbl_product (id_product)
ALTER TABLE tbl_warehousereceipt_detail  ADD CONSTRAINT tbl_warehousereceipt_detail_ibfk_2 FOREIGN KEY (id_warehousereceipt) REFERENCES tbl_warehousereceipt (id_warehousereceipt)
COMMIT;



