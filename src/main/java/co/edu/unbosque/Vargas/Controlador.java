package co.edu.unbosque.Vargas;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.unbosque.Vargas.UsuarioJSON;
import co.edu.unbosque.Vargas.Usuarios;

/**
 * Servlet implementation class Controlador
 */
@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String menu=request.getParameter("menu");
		String accion=request.getParameter("accion");
		
		switch (menu) {
			case "Principal":
				request.getRequestDispatcher("/usuarios.jsp").forward(request, response);
				break;
			case "Usuarios":
				if (accion.equals("Listar")) {
				try {
					ArrayList<Usuarios> lista = UsuarioJSON.getJSON();
					request.setAttribute("listaUsuarios", lista);
				} catch (Exception e) {
				e.printStackTrace();
				}
				}else if(accion.equals("Agregar")) {
					Usuarios usuario = new Usuarios();
					usuario.setCedula_usuario(request.getParameter("txtcedula"));
					usuario.setNombre_usuario(request.getParameter("txtnombre"));
					usuario.setEmail_usuario(request.getParameter("txtemail"));
					usuario.setUsuario(request.getParameter("txtusuario"));
					usuario.setPassword(request.getParameter("txtpassword"));
					int respuesta=0;
				try {
					respuesta = UsuarioJSON.postJSON(usuario);
					PrintWriter write = response.getWriter();
				if (respuesta==200) {
					//mensaje de aprovacion
					request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar") .forward(request, response);
					} else {
					write.println("Error: " + respuesta);
					}
					write.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				}else if(accion.equals("Actualizar")) {
					Usuarios usuario = new Usuarios();
					usuario.set_id(request.getParameter("txtid"));
					usuario.setCedula_usuario(request.getParameter("txtcedula"));
					usuario.setNombre_usuario(request.getParameter("txtnombre"));
					usuario.setEmail_usuario(request.getParameter("txtemail"));
					usuario.setUsuario(request.getParameter("txtusuario"));
					usuario.setPassword(request.getParameter("txtpassword"));
					int respuesta=0;
				try {
					respuesta = UsuarioJSON.putJSON(usuario,usuario.get_id());
					PrintWriter write = response.getWriter();
				if (respuesta==200) {
					request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar") .forward(request, response); } else {
					write.println("Error: " + respuesta);
					}
					write.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				}else if(accion.equals("Cargar")) {
					String id= request.getParameter("id");
				try {
					ArrayList<Usuarios> lista1 = UsuarioJSON.getJSON();
					for (Usuarios usuarios:lista1){
						if (usuarios.getCedula_usuario().equals(id)) {
						request.setAttribute("usuarioSeleccionado", usuarios);
						request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar") .forward(request, response); }
						}
				} catch (Exception e) {
					e.printStackTrace();
				}
				}else if(accion.equals("Eliminar")) {
					String id= request.getParameter("id");
					int respuesta=0;
				try {
					respuesta = UsuarioJSON.deleteJSON(id);
					PrintWriter write = response.getWriter();
				if (respuesta==200) { request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar") .forward(request, response);
				} else {
					write.println("Error: " + respuesta);
					}
					write.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				}
				request.getRequestDispatcher("/usuarios.jsp").forward(request, response);
				break;
			case "Clientes":
			request.getRequestDispatcher("/jsp/clientes.jsp").forward(request, response);
			break;
			case "Proveedores":
			request.getRequestDispatcher("/jsp/proveedores.jsp").forward(request, response);
			break;
			case "Productos":
			request.getRequestDispatcher("/jsp/productos.jsp").forward(request, response);
			break;
			case "Ventas":
			request.getRequestDispatcher("/jsp/ventas.jsp").forward(request, response);
			break;
			case "Reportes":
			request.getRequestDispatcher("/jsp/reportes.jsp").forward(request, response);
			break;
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
