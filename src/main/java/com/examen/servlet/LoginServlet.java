package com.examen.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import com.examen.modelo.Usuario;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	String login="";
	String pass="";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		login = request.getParameter("n1");
		pass = request.getParameter("n2");
		
		List<Usuario> usuarioTienda = new LinkedList<Usuario>();
		usuarioTienda.add(
			new Usuario(123, "luck", "123400", "Luis", "Perez", "admin"));
		usuarioTienda.add(
				new Usuario(123, "pepe", "123401", "Pedro", "Perez", "admin"));
		usuarioTienda.add(
				new Usuario(123, "robin", "123410", "Roberto", "ALi", "operador"));
		usuarioTienda.add(
				new Usuario(123, "franz", "123411", "Francisco", "Quispe", "operador"));
		
		List<Usuario> usuarios = getUsuarioLogoeado(usuarioTienda);
		if(!usuarios.isEmpty()) {
			HttpSession session = request.getSession();
			
			session.setAttribute("nombreUser", usuarios.get(0).getNombre()+" "+usuarios.get(0).getApellido());
			session.setAttribute("rol", usuarios.get(0).getRol());
			Cookie cookieUser = new Cookie("user", usuarios.get(0).getLogin());
			response.addCookie(cookieUser);
			request.getRequestDispatcher("/compras.jsp").forward(request, response);
		}
		
		PrintWriter salida = response.getWriter();
		salida.println("suma de masnum2+ es igual a: "+usuarios);
	}

	private List<Usuario> getUsuarioLogoeado(List<Usuario> usuarioTienda) {
	   List<Usuario> userReg=	usuarioTienda.stream().filter(x -> x.getLogin().equals(login) && x.getPass().equals(pass))
			   					.collect(Collectors.toList());
	   if(userReg.isEmpty()) {
		   System.out.print(userReg);
			return null;
	   }else {
		   System.out.print(userReg);
			return userReg;
	   }
		
	}

	
	
}
