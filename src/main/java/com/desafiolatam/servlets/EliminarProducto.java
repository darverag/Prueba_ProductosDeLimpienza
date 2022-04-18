package com.desafiolatam.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.desafiolatam.facade.FacadeProducto;

@WebServlet("/eliminarProducto")
public class EliminarProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id_producto");//Se captura info desde formulario
		FacadeProducto facadeProducto = new FacadeProducto();
		int resultado = facadeProducto.eliminarProducto(Integer.parseInt(id));
		
		if (resultado ==1) { // se elimino
			//Que haremos?
			request.getRequestDispatcher("/listarProducto").forward(request,  response);
			request.setAttribute("msgExito", "El producto se ha eliminado correctamente");
		
		}else {
			//No se elimino, Que hacemos??
			request.setAttribute("msgError", "Error al emiminar el producto");
		}
		request.getRequestDispatcher("listarProducto.jsp").forward(request,  response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
