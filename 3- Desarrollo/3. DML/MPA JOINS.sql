use mpa;
/*Reporte de Ventas*/
select id_factura, fecha_compra , cantidad_compra , totalidad, id_producto , nombre_producto, imagen
from detalle_factura
inner join producto
on detalle_factura.ProductoId_Producto = Producto.Id_Producto
inner join factura
on detalle_factura.FacturaId_Factura = Factura.Id_Factura;

/*Productos Vendidos  clientes*/
select primer_nombre , segundo_nombre , primer_apellido, segundo_apellido, id_factura, Fecha_Compra, cantidad_compra, nombre_producto, precio_unitario
from Usuario
inner join Factura
on Usuario.Id_Usuario = Factura.UsuarioId_Usuario
inner join detalle_factura
on Factura.Id_factura = detalle_factura.facturaId_Factura
inner join producto
on detalle_factura.ProductoId_Producto = Producto.Id_Producto;

/*Tipo de Pago Preferido por Usuario*/

/*Categoria mas vendida*/
select Nombre_Categoria , count(Nombre_Categoria) as categoria_mas_vendida
from detalle_factura as df
inner join producto as p
on df.ProductoId_Producto = p.Id_Producto
join categoria as cat on  p.CategoriaId_Categoria = cat.Id_Categoria
group by cat.Nombre_Categoria
order by categoria_mas_vendida desc;


/*No. Usuarios Registrados*/



select *
from Usuario 
order by primer_apellido asc;

/*Producto más Vendido*/
select Nombre_Producto , count(Nombre_Producto) as Producto_mas_vendido
from detalle_factura as df
inner join producto as p
on df.ProductoId_Producto = p.Id_Producto
group by p.Nombre_Producto 
order by Producto_mas_vendido desc;

/*Inventario*/



/*Los Usuarios con más compras*/
select Primer_Nombre,Primer_Apellido,count(Id_Factura) as ComprasCliente from usuario 
as u join factura as fac on
u.Id_Usuario = fac.UsuarioId_Usuario
group by u.Id_Usuario
order by ComprasCliente desc;


/*Los Usuarios con compras de mayor valor*/
select Primer_Nombre,Segundo_Nombre, Totalidad
from usuario as u join Factura as fac on
u.Id_Usuario = fac.UsuarioId_Usuario
order by fac.Totalidad   ;



/*Usuarios T_doc <> c.c*/
select Id_Usuario,Primer_Nombre,Correo_Electronico,Teléfono,Descripcion from usuario as useer 
join tipo_de_documento as tp on useer.Tipo_DocumentoId_Documento = tp.Id_Documento where tp.Id_Documento = 201;

/*Ciudad > ventas*/
select Nombre_Ciudad,count(Nombre_Ciudad) as venta_Ciudad from usuario as us join ciudad as city on us.CiudadId_Ciudad = city.Id_Ciudad
join factura as fact on us.Id_Usuario = fact.UsuarioId_Usuario
group by city.Nombre_Ciudad ;
/*Ciudad > Usuarios*/

/*Factura*/

select *
from factura;