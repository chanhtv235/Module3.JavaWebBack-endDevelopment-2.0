-- Bước 1: Tạo cơ sở dữ liệu demo
-----------------------------------------------------------------------------------------------------------------------
create database demo;

-- Bước 2: Tạo bảng Products với các trường dữ liệu sau:

-- Id
-- productCode
-- productName
-- productPrice
-- productAmount
-- productDescription
-- productStatus
-- Chèn một số dữ liệu mẫu cho bảng Products.
-----------------------------------------------------------------------------------------------------------------------
create table demo.products (
	id int not null auto_increment,
    productCode varchar(15) not null,
	productName varchar(30),
	productPrice decimal(15,2) not null,
	productAmount int not null,
	productDescription text,
	productStatus int,
    
    primary key (id)
);

insert into demo.products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
values
('123456789012341', 'product 1', 150000, 10, 'note 1...', 1),
('123456789012342', 'product 2', 250000, 6, 'note 2...', 1),
('123456789012343', 'product 3', 170000, 100, 'note 3...', 1),
('123456789012344', 'product 4', 110000, 7, 'note 4...', 1),
('123456789012345', 'product 5', 40000, 0, 'note 5...', 1),
('123456789012346', 'product 6', 90000, 1, 'note 6...', 1);


-- Bước 3:

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
-- So sánh câu truy vấn trước và sau khi tạo index
-----------------------------------------------------------------------------------------------------------------------
explain select *
from demo.products
where productCode = '123456789012342';

create unique index product_code_index
on demo.products(productCode);

drop index product_code_index
on demo.products;

explain select *
from demo.products
where productName = 'product 1'
and productCode = '123456789012341';

create unique index composite_product_index
on demo.products(productName, productPrice);


-- Bước 4:

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
-- Tiến hành sửa đổi view
-- Tiến hành xoá view
-----------------------------------------------------------------------------------------------------------------------
create view demo.products_view as
select productCode, productName, productPrice, productStatus
from demo.products;

select *
from demo.products_view;


-- Bước 5:

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
-- Tạo store procedure thêm một sản phẩm mới
-- Tạo store procedure sửa thông tin sản phẩm theo id
-- Tạo store procedure xoá sản phẩm theo id
-----------------------------------------------------------------------------------------------------------------------
delimiter //
create procedure demo.sp_get_all_info()
begin
	select *
    from products;
end;
// delimiter ;

call demo.sp_get_all_info();

delimiter //
create procedure demo.sp_add_new_product(
    pProductCode varchar(15)
	, pProductName varchar(30)
	, pProductPrice decimal(15,2)
	, pProductAmount int
	, pProductDescription text
	, pProductStatus int)
begin
	insert into products(productCode, productName, productPrice, productAmount, productDescription, productStatus)
    values (pProductCode, pProductName, pProductPrice, pProductAmount, pProductDescription, pProductStatus);
end;
// delimiter ;

call demo.sp_add_new_product('123456789012347', 'product 7', 40000, 0, 'note 7...', 1);

delimiter //
create procedure demo.sp_update_product_by_id(
	pId int
	, pProductCode varchar(15)
	, pProductName varchar(30)
	, pProductPrice decimal(15,2)
	, pProductAmount int
	, pProductDescription text
	, pProductStatus int)
begin
	update products
    set productCode = pProductCode
		, productName = pProductName
		, productPrice = pProductPrice
        , productAmount = pProductAmount
        , productDescription = pProductDescription
        , productStatus = pProductStatus
	where
		id = pId;
end;
// delimiter ;

call demo.sp_update_product_by_id(8, '123456789012348', 'product 8', 40008, 8, 'note 8...', 0);

delimiter //
create procedure demo.sp_delete_product_by_id(pId int)
begin
	delete from products
	where id = pId;
end;
// delimiter ;

call demo.sp_delete_product_by_id(8);