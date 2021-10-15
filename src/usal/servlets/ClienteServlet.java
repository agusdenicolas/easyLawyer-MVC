package usal.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import usal.dominio.Cliente;
import usal.dominio.Direccion;
import usal.implementaciones.ClienteDaoImplMySql;
import usal.interfaces.ICrudDao;
import usal.util.DAOExcepcion;

@WebServlet("/ClienteServlet")
public class ClienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ICrudDao<Cliente> dao;
       
    public ClienteServlet() {
        super();
        dao = new ClienteDaoImplMySql();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("clientes", getTodosClientes());
		
		//Redirect a la jsp de Clientes View
		request.getRequestDispatcher("ClientesView.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//ALTA CLIENTE
		if (request.getParameter("alta") != null) {
			
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			String cuit = request.getParameter("cuit");
//			String direccion = request.getParameter("direccion"); //TODO: Cambiar por tipo Direccion
			String mail = request.getParameter("mail");
			String celular = request.getParameter("celular");
			
			//TODO: Cambiar el new Direccion()
			Cliente c = new Cliente(nombre, apellido, cuit, new Direccion(), mail, celular);
			
			try {
				insertarCliente(c);
			} catch (DAOExcepcion e) {
				e.printStackTrace();
			}
		}
		//MODIFICAR CLIENTE
		else if(request.getParameter("modificar") != null) {
			
			int idCliente = Integer.parseInt(request.getParameter("id"));
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			String cuit = request.getParameter("cuit");
//			String direccion = request.getParameter("direccion"); //TODO: Cambiar por tipo Direccion
			String mail = request.getParameter("mail");
			String celular = request.getParameter("celular");
			
			Cliente c = new Cliente(nombre, apellido, cuit, new Direccion(), mail, celular);
			c.setIdCliente(idCliente);
			
			try {
				modificarCliente(c);
			} catch (DAOExcepcion e) {
				e.printStackTrace();
			}
		}
		//BAJA CLIENTE
		else if(request.getParameter("baja") != null){
			int idCliente = Integer.parseInt(request.getParameter("id"));	
			Cliente c = getUnoCliente(idCliente);
			
			try {
				eliminarCliente(c);
			} catch (DAOExcepcion e) {
				e.printStackTrace();
			}
		}
		
		//Luego de cualquier operacion devuelvo al mismo menú
		response.sendRedirect("ClienteServlet");
	}
	
	//------------------------------------------------------------------------------------
	
	private List<Cliente> getTodosClientes() {
		dao = new ClienteDaoImplMySql();
		try {
			return dao.getTodos();
		} catch (DAOExcepcion e) {
			e.printStackTrace();
		}
		return null;
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