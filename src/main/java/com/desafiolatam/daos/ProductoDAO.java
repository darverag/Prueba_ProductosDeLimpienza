package com.desafiolatam.daos;

import java.util.ArrayList;

import com.desafiolatam.modelsDTO.Producto;

public interface ProductoDAO {
	
	public int crearProducto (Producto producto);
	public Producto mostrarProducto(int id_producto);//leer
	public int modificarProducto(Producto producto);//editar
	public int eliminarProducto(int id_producto);
	public ArrayList<Producto>obtenerListarProductos();
	
}
