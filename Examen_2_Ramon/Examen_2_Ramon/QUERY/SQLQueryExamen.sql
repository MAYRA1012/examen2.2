Create database PuntoServicio

Use PuntoServicio

Create table Cajeros(

Codigo int identity (1,1),
NomApels nvarchar(255)
constraint pk_Codigo Primary key (Codigo)

)


insert into Cajeros values ('Andrea Barquero'),('Eunice Chacon')

select *from Cajeros


Create table Maquinas_Registradoras(

Codigo int identity (1,1),
Piso int
constraint pk_CodMaq Primary key (Codigo)

)

insert into Maquinas_Registradoras values (3),(5)
select *from Maquinas_Registradoras



Create table Productos(

Codigo int identity (1,1),
Nombre nvarchar(100) not null,
Precio float default 0

constraint pk_CodProd Primary key (Codigo)

)


insert into Productos values ('leche',1250.5),('Azucar',2500),('Cafe',2300),'Jalea'
insert into Productos values ('Jalea')

select *from Productos

update Productos
set Nombre = 'Mariscos',  Precio = (4500.7)
where Codigo =1

Create table venta(

CodVenta int,
NomApels nvarchar(255) not null,
Cajero int,
Maquina int,
Producto int,
Fecha datetime
constraint pk_CodVenta Primary key (CodVenta),
constraint fk_CodVenta1 foreign key(CodVenta) references Cajeros(Codigo),
constraint fk_CodVenta2 foreign key(CodVenta) references Maquinas_Registradoras(Codigo),
constraint fk_CodVenta3 foreign key(CodVenta) references Productos(Codigo)

)


Select m.nombre, m.tipo, c.doctor, c.fecha
from Mae_Mascotas m
inner join Citas c on m.id= c.id_Mascota

Select m.NomApels AS 'Nombre Apellidos', m.Codigo, c.Nombre, c.Precio ,d.Piso
from Cajeros m
inner join Productos c on m.Codigo= c.Codigo
inner join Maquinas_Registradoras d on m.Codigo= d.Codigo
