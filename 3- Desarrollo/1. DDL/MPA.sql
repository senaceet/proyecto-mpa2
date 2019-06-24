create database MPA;
use MPA;
/*----------------------------------------------*/
create table Usuario (
Id_Usuario integer (10) not null,
Primer_Nombre varchar (15) not null,
Segundo_Nombre varchar (15),
Primer_Apellido varchar (15) not null,
Segundo_Apellido varchar (15),
Correo_Electronico varchar (50) not null,
Contraseña varchar (15) not null,
Teléfono varchar (15) not null,
Edad integer (3) not null,
Tipo_DocumentoId_Documento integer (10) not null,
RolId_Rol integer (10) not null,
CiudadId_Ciudad integer (10) not null,
unique (Correo_Electronico));
/*----------------------------------------------*/
create table Tipo_de_Documento(
Id_Documento integer (10) not null, 
Abreviatura varchar (4) not null,
Descripcion varchar (20) not null,
primary key (Id_Documento));
/*----------------------------------------------*/
Create table Rol(
Id_Rol integer (10) not null,
Nombre_Rol varchar (25) not null,
Primary key (Id_Rol));
/*----------------------------------------------*/
Create table Ciudad(
Id_Ciudad integer (10) not null,
Nombre_Ciudad varchar (25) not null,
Primary key (Id_Ciudad));
/*----------------------------------------------*/
Create table Dirección(
Id_Dirección integer (10) not null,
Dirección varchar (50) not null,
Cod_Postal integer (10) not null,
UsuarioId_Usuario integer (10) not null,
Primary key (Id_Dirección));
/*----------------------------------------------*/
Create table Factura(
Id_Factura integer (10) not null,
Fecha_Compra date not null,
Cantidad_Compra float (5) not null,
Totalidad float (10),
UsuarioId_Usuario integer (10) not null,
UsuarioTipo_DocumentoId_Documento integer (10) not null,
TPId_Tipo_de_Pago integer (10) not null,
primary key (Id_Factura));
/*----------------------------------------------*/
create table Tipo_de_Pago(
Id_Tipo_de_Pago integer (10) not null,
Nombre_Tipo_Pago varchar(20) not null,
primary key (Id_Tipo_de_Pago));
/*----------------------------------------------*/
create table Tarjeta_de_Credito(
Id_Tarjeta_Credito integer (10) not null,
Titular_de_la_tarjeta varchar (50) not null,
Número_de_tarjeta bigint (16) not null,
Fecha_de_Vencimiento date not null,
CVV integer (5) not null,
TPId_Tipo_de_Pago integer (10) not null,
primary key (Id_Tarjeta_Credito));
/*----------------------------------------------*/
create table Tarjeta_de_Debito(
Id_Tarjeta_Debito integer (10) not null,
Nombre_del_Banco varchar(20) not null,
Tipo_de_Cuenta varchar(10) not null,
Titular_de_la_tarjeta_debito varchar (30) not null,
Número_de_tarjeta bigint (20) not null,
Fecha_de_Vencimiento date not null,
TPId_Tipo_de_Pago integer (10) not null,
primary key (Id_Tarjeta_Debito));
/*----------------------------------------------*/
Create table Envio(
Id_Envio integer (10) not null,
Tipo_Envio varchar (25) not null,
FacturaId_Factura integer (10) not null,
Primary key (Id_Envio));
/*----------------------------------------------*/
create table Producto (
Id_Producto integer (10) not null,
Nombre_Producto varchar (50) not null,
Descripción varchar (100) not null,
Cantidad integer (10) not null,
Precio_Unitario integer (10)  not null,
Imagen blob null,
Primary key (Id_Producto));
/*----------------------------------------------*/
create table Marca (
Id_Marca integer (10) not null,
Nombre_Marca varchar (20) not null,
Primary key (Id_Marca));
/*----------------------------------------------*/
create table Categoria (
Id_Categoria integer (10) not null,
Nombre_Categoria varchar (20) not null,
Primary key (Id_Categoria));
/*----------------------------------------------*/
create table Error1 (
Id_Error integer (10),
Descripcion_Error integer (10) ,
Fecha date,
Hora time,
Primary key (Id_Error)); 
/*----------------------------------------------*/
create table Servidor_de_Correo(
Id_Servidor_Correo integer (10),
Tipo_Servidor_Web varchar (20),
primary key (Id_Servidor_Correo));
/*----------------------------------------------*/

alter table Usuario
add constraint fk_Tipo_DocumentoId_Documento
foreign key (Tipo_DocumentoId_Documento)
references Tipo_de_Documento (Id_Documento);

alter table Usuario
add primary key(Id_Usuario, Tipo_DocumentoId_Documento);

alter table Usuario
add foreign key (RolId_Rol)
references Rol(Id_Rol);

alter table Usuario
add foreign key (CiudadId_Ciudad)
references Ciudad(Id_Ciudad);

alter table Factura
add constraint foreign key (UsuarioId_Usuario, UsuarioTipo_DocumentoId_Documento)
references Usuario(Id_Usuario, Tipo_DocumentoId_Documento);

alter table Factura
add foreign key (TPId_Tipo_de_Pago)
references Tipo_de_Pago(Id_Tipo_de_Pago);

alter table Tarjeta_de_Credito
add foreign key (TPId_Tipo_de_Pago)
references Tipo_de_Pago(Id_Tipo_de_Pago);

alter table Tarjeta_de_Debito
add foreign key (TPId_Tipo_de_Pago)
references Tipo_de_Pago(Id_Tipo_de_Pago);

alter table Dirección
add foreign key (UsuarioId_Usuario)
references Usuario(Id_Usuario);

alter table Producto
add column MarcaId_Marca integer (10) not null;

alter table Producto
add column CategoriaId_Categoria integer (10) not null;

alter table Producto
add foreign key (MarcaId_Marca)
references Marca(Id_Marca);

alter table Producto
add foreign key (CategoriaId_Categoria)
references Categoria(Id_Categoria);

alter table Envio
add foreign key (FacturaId_Factura)
references Factura(Id_Factura);

create table detalle_Factura(
ProductoId_Producto integer (10) not null,
FacturaId_Factura integer (10) not null,
primary key (ProductoId_Producto, FacturaId_Factura),

constraint detalle_Factura
foreign key (ProductoId_Producto)
references Producto(Id_Producto),

constraint detalle_Factura1
foreign key (FacturaId_Factura)
references Factura(Id_Factura));
