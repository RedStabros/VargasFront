package co.edu.unbosque.Vargas;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.unbosque.Vargas.UsuarioJSON;
import co.edu.unbosque.Vargas.Usuarios;


@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void validarUsuarios(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	try {
    		
		    	String usua = request.getParameter("txtusuario");
		    	String pass = request.getParameter("txtpassword");
		    	int respuesta =0;
		    	ArrayList<Usuarios> lista = UsuarioJSON.getJSON();
		    	request.setAttribute("lista", lista);
		    	
	    	for (Usuarios usuario:lista){
			    	if (usuario.getUsuario().equals(usua) && usuario.getPassword().equals(pass)) {
			    	request.setAttribute("usuario", usuario);
			    	request.getRequestDispatcher("/jsp/usuarios.jsp").forward(request, response);
			    	respuesta =1;
			    	}
	    		}
	    	if (respuesta==0) {
		    	request.getRequestDispatcher("/index.jsp").forward(request, response);
		    	System.out.println("No se encontraron datos");
		    	}
	    	} catch (Exception e) {
	    	e.printStackTrace();
	    	}
    	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String accion = request.getParameter("accion");
		if(accion.equals("Ingresar")) {
			this.validarUsuarios(request, response);
		}
	}

}
