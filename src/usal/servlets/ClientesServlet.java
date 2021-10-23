package usal.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import usal.dominio.Cliente;
import usal.dominio.Direccion;
import usal.factory.DAOFactory;
import usal.interfaces.IClienteDao;
import usal.util.DAOExcepcion;

@WebServlet("/ClientesServlet")
public class ClientesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private IClienteDao dao;
       
    public ClientesServlet() {
        this.dao = DAOFactory.getClienteDao();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String op = (request.getParameter("op") != null) ? request.getParameter("op") : "lista";
		
		//List
		if(op.equalsIgnoreCase("lista")) {
			request.setAttribute("clientes", getTodosClientesActivos());
			request.getRequestDispatcher("ClientesView.jsp").forward(request, response);
			
		//Nuevo
		}else if (op.equalsIgnoreCase("nuevo")) {
			Cliente c = new Cliente();
			
			request.setAttribute("cliente", c);
			request.getRequestDispatcher("ClientesView_Form.jsp").forward(request, response);
			
		//Modificar
		}else if(op.equalsIgnoreCase("modificar")) {
			int idCliente = Integer.parseInt(request.getParameter("idCliente"));
			Cliente c = getUnoCliente(idCliente);
			
			request.setAttribute("cliente", c);		
			request.getRequestDispatcher("ClientesView_Form.jsp").forward(request, response);
		
		//Eliminar
		}else if (op.equalsIgnoreCase("eliminar")) {
			int idCliente = Integer.parseInt(request.getParameter("idCliente"));
			Cliente c = getUnoCliente(idCliente);
			
			try {
				eliminarCliente(c);
			} catch (DAOExcepcion e) {
				e.printStackTrace();
			}finally {
				response.sendRedirect("ClientesServlet");
			}
		}	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
		int idCliente = Integer.parseInt(request.getParameter("idCliente"));
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String cuit = request.getParameter("cuit");
		String direccion = request.getParameter("calle") + " " + request.getParameter("numero") + ", " + request.getParameter("provincia");
		String mail = request.getParameter("mail");
		String celular = request.getParameter("celular");
		
		Cliente c = new Cliente(nombre, apellido, cuit, Direccion.convertirDireccion(direccion), mail, celular);
		
		//Nuevo
		if(idCliente == 0) {
			try {
				insertarCliente(c);
			} catch (DAOExcepcion e) {
				e.printStackTrace();
			}
			
		//Modificar
		}else if(idCliente != 0) {
			c.setIdCliente(idCliente);
			
			try {
				modificarCliente(c);
			} catch (DAOExcepcion e) {
				e.printStackTrace();
			}
		}
		
		response.sendRedirect("ClientesServlet");
	}
	
	//------------------------------------------------------------------------------------
	
	private List<Cliente> getTodosClientes() {
		List<Cliente> lista = new ArrayList<Cliente>();
		try {
			lista = dao.getTodos();
		} catch (DAOExcepcion e) {
			e.printStackTrace();
		}
		return lista;
	}
	
	private List<Cliente> getTodosClientesActivos() {
		List<Cliente> lista = new ArrayList<Cliente>();
		try {
			lista = dao.getTodosActivos();
		} catch (DAOExcepcion e) {
			e.printStackTrace();
		}
		return lista;
	}
	
	private void insertarCliente(Cliente c) throws DAOExcepcion {
		dao.insertar(c);
	}
	
	private void modificarCliente(Cliente c) throws DAOExcepcion{
		dao.modificar(c);
	}
	
	private void eliminarCliente(Cliente c) throws DAOExcepcion{
		dao.eliminar(c);
	}
	
	private Cliente getUnoCliente(int id) {
		try {
			return dao.getUno(id);
		} catch (DAOExcepcion e) {
			e.printStackTrace();
		}
		return null;
	}	
}