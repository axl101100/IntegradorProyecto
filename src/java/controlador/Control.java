/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.cliente;
import modelo.distrito;
import modelo.categoria_producto;
import modelo.producto;
import modelo.subcategoria_producto;
import modelo.trabajador;
import modeloDAO.cliente_DAO;
import modeloDAO.distrito_DAO;
import modeloDAO.catProducto_DAO;
import modeloDAO.producto_DAO;
import modeloDAO.subCatProducto_DAO;
import modeloDAO.trabajador_DAO;

@WebServlet(name = "Control", urlPatterns = {"/Control"})
public class Control extends HttpServlet {
    
    ArrayList<distrito>lisDis =new ArrayList<>();
    ArrayList<cliente>liscli =new ArrayList<>();
    ArrayList<trabajador>listra =new ArrayList<>();
    ArrayList<categoria_producto>liscatPro =new ArrayList<>();
    ArrayList<subcategoria_producto>lissubCat =new ArrayList<>();
    ArrayList<producto>lisPro =new ArrayList<>();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //cliente
        String paginaAgregarCliente = "Vistas/Vistas Cliente/Agregar_Cliente.jsp";
        String paginaListarCliente = "Vistas/Vistas Cliente/Listar.jsp";
        String paginaEditarCliente = "Vistas/Vistas Cliente/Editar.jsp";
        //trabajador
        String paginaAgregarTrabajador = "Vistas/Vistas Trabajador/Agregar_Trabajador.jsp";
        String paginaListarTrabajador = "Vistas/Vistas Trabajador/Listar.jsp";
        String paginaEditarTrabajador = "Vistas/Vistas Trabajador/Editar.jsp";
        //distrito
        String paginaAgregarDistrito = "Vistas/Vistas Distrito/Agregar_Distrito.jsp";
        String paginaListarDistrito = "Vistas/Vistas Distrito/Listar.jsp";
        String paginaEditarDistrito = "Vistas/Vistas Distrito/Editar.jsp";
        //categoria producto
        String paginaAgregarCategoriaProducto = "Vistas/Vistas Categoria/Agregar Categoria Producto.jsp";
        String paginaListarCategoriaProducto = "Vistas/Vistas Categoria/Listar.jsp";
        String paginaEditarCategoriaProducto = "Vistas/Vistas Categoria/Editar Categoria Producto.jsp";
        //subcategoria producto
        String paginaAgregarSubCatProducto = "Vistas/Vistas SubCategoria/Agregar Subcategoria.jsp";
        String paginaListarSubCatProducto = "Vistas/Vistas SubCategoria/Listar.jsp";
        String paginaEditarSubCatProducto = "Vistas/Vistas SubCategoria/Editar SubCategoria.jsp";
        //producto
        String paginaAgregarProducto = "Vistas/Vistas Producto/Agregar_Producto.jsp";
        String paginaListarProducto = "Vistas/Vistas Producto/Listar.jsp";
        String paginaEditarProducto = "Vistas/Vistas Producto/Editar.jsp";
        
        
        String action = request.getParameter("accion");
        String acceso = null;
        
        distrito d = new distrito();
        distrito_DAO dao_Dis = new distrito_DAO();
        
        cliente c = new cliente();
        cliente_DAO dao_Cli = new cliente_DAO();
        
        trabajador t = new trabajador();
        trabajador_DAO dao_Tra = new trabajador_DAO();
        
        producto p = new producto();
        producto_DAO dao_Pro = new producto_DAO();
        
        categoria_producto cp = new categoria_producto();
        catProducto_DAO dao_CatPro = new catProducto_DAO();
        
        subcategoria_producto sc= new subcategoria_producto();
        subCatProducto_DAO dao_SubCatPro = new subCatProducto_DAO();
        
        //tabla cliente
        if(action.equalsIgnoreCase("agregarCliente")){
            lisDis=dao_Dis.listarTodosDistritos();
            request.setAttribute("lista", lisDis);
            acceso=paginaAgregarCliente;
        }
        if(action.equalsIgnoreCase("Agregar Cliente")){
            int dni = Integer.parseInt(request.getParameter("dni"));
            String nom = request.getParameter("nombre");
            String app = request.getParameter("ape_paterno");
            String apm = request.getParameter("ape_materno");
            String sex = request.getParameter("sexo");
            String tel = request.getParameter("telefono");
            String cor = request.getParameter("correo");
            String con = request.getParameter("contrasena");
            int dist = Integer.parseInt(request.getParameter("distrito"));
            String dir = request.getParameter("direccion");
            String ref = request.getParameter("referencia");
            c.setDni(dni);
            c.setNombre(nom); 
            c.setApe_paterno(app);
            c.setApe_materno(apm);
            c.setSexo(sex);
            c.setTelefono(tel);
            c.setCorreo(cor);
            c.setContrasena(con);
            c.setDistrito(dist);
            c.setDireccion(dir);
            c.setReferencia(ref);
            dao_Cli.agregar(c);
            action="listarCliente";
        }
        if(action.equalsIgnoreCase("EditarCliente")){
            int dni = Integer.parseInt(request.getParameter("dni"));
            c=dao_Cli.listarUnCliente(dni);
            liscli=dao_Cli.listarTodosClientes();
            request.setAttribute("lista", lisDis);
            request.setAttribute("cli", c);
            acceso=paginaEditarCliente;
        }
        if(action.equalsIgnoreCase("Actualizar Cliente")){
            int dni = Integer.parseInt(request.getParameter("dni"));
            String nom = request.getParameter("nombre");
            String app = request.getParameter("ape_paterno");
            String apm = request.getParameter("ape_materno");
            String sex = request.getParameter("sexo");
            String tel = request.getParameter("telefono");
            String cor = request.getParameter("correo");
            String con = request.getParameter("contrasena");
            int dist = Integer.parseInt(request.getParameter("distrito"));
            String dir = request.getParameter("direccion");
            String ref = request.getParameter("referencia"); 
            c.setDni(dni);
            c.setNombre(nom); 
            c.setApe_paterno(app);
            c.setApe_materno(apm);
            c.setSexo(sex);
            c.setTelefono(tel);
            c.setCorreo(cor);
            c.setContrasena(con);
            c.setDistrito(dist);
            c.setDireccion(dir);
            c.setReferencia(ref);
          
            dao_Cli.editar(c);
            action="listarCliente";
            
        }
        if(action.equalsIgnoreCase("EliminarCliente")){
            int dni = Integer.parseInt(request.getParameter("dni"));
            dao_Cli.eliminar(dni);
            action="listarCliente";
        }
        if(action.equalsIgnoreCase("listarCliente")){
            liscli=dao_Cli.listarTodosClientes();
            request.setAttribute("lista", liscli);
            acceso=paginaListarCliente;
        }
        //tabla distrito
        if(action.equalsIgnoreCase("agregarDistrito")){
            acceso=paginaAgregarDistrito;
        }
        
        if(action.equalsIgnoreCase("Agregar distrito")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            String nom = request.getParameter("nombre");
            double cos = Double.parseDouble(request.getParameter("costo"));
            d.setId(cod);
            d.setNombre(nom);
            d.setCosto(cos);
            dao_Dis.agregar(d);
            action="listarDistrito";
        }
        
        if(action.equalsIgnoreCase("editarDistrito")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            d=dao_Dis.listarUnDistrito(cod);
            request.setAttribute("dist", d);
            acceso=paginaEditarDistrito;
        }
        
        if(action.equalsIgnoreCase("Editar distrito")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            String nom = request.getParameter("nombre");    
            double cos = Double.parseDouble(request.getParameter("costo"));
            d.setId(cod);
            d.setNombre(nom);
            d.setCosto(cos);
            dao_Dis.editar(d);
            action="listarDistrito";
        }
                
        if(action.equalsIgnoreCase("eliminarDistrito")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            dao_Dis.eliminar(cod);
            action="listarDistrito";
        }
        
        if(action.equalsIgnoreCase("listarDistrito")){
            lisDis=dao_Dis.listarTodosDistritos();
            request.setAttribute("lista", lisDis);
            acceso=paginaListarDistrito;
        }
        
        //tabla trabajador
        if(action.equalsIgnoreCase("agregarTrabajador")){
            acceso=paginaAgregarTrabajador;
        }
        
        if(action.equalsIgnoreCase("Agregar trabajador")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            int tipo= Integer.parseInt(request.getParameter("tipo"));
            String nom = request.getParameter("nombre");
            String app = request.getParameter("ape_paterno");
            String apm = request.getParameter("ape_materno");
            String sex = request.getParameter("sexo");
            String tel = request.getParameter("telefono");
            String cor = request.getParameter("correo");
            String con = request.getParameter("contrasena");
            String dir = request.getParameter("direccion");
            t.setDni(cod);
            t.setTipo(tipo);
            t.setNombre(nom);
            t.setApe_paterno(app);
            t.setApe_materno(apm);
            t.setSexo(sex);
            t.setTelefono(tel);
            t.setCorreo(cor);
            t.setContrasena(con);
            t.setDireccion(dir);
            
            dao_Tra.agregar(t);
            action="listarTrabajador";
        }
        
        if(action.equalsIgnoreCase("editarTrabajador")){
            int cod = Integer.parseInt(request.getParameter("dni"));
            t=dao_Tra.listarUnTrabajador(cod);
            request.setAttribute("list", listra);
            request.setAttribute("tra", t);
            acceso=paginaEditarTrabajador;
        }
        
        if(action.equalsIgnoreCase("Actualizar Trabajador")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            int tipo= Integer.parseInt(request.getParameter("tipo"));
            String nom = request.getParameter("nombre");
            String app = request.getParameter("ape_paterno");
            String apm = request.getParameter("ape_materno");
            String sex = request.getParameter("sexo");
            String tel = request.getParameter("telefono");
            String cor = request.getParameter("correo");
            String con = request.getParameter("contrasena");
            String dir = request.getParameter("direccion");
            t.setDni(cod);
            t.setTipo(tipo);
            t.setNombre(nom);
            t.setApe_paterno(app);
            t.setApe_materno(apm);
            t.setSexo(sex);
            t.setTelefono(tel);
            t.setCorreo(cor);
            t.setContrasena(con);
            t.setDireccion(dir);
            dao_Tra.editar(t);
            action="listarTrabajador";
        }
                
        if(action.equalsIgnoreCase("eliminarTrabajador")){
            int dni = Integer.parseInt(request.getParameter("codigo"));
            dao_Tra.eliminar(dni);
            action="listarTrabajador";
        }
        
        if(action.equalsIgnoreCase("listarTrabajador")){
            listra=dao_Tra.listarTodosTrabajadores();
            request.setAttribute("lista", listra);
            acceso=paginaListarTrabajador;
        }
        
        //tabla producto
        if(action.equalsIgnoreCase("agregarProducto")){
            lissubCat=dao_SubCatPro.listarTodosSubCat();
            request.setAttribute("lista", lissubCat);
            acceso=paginaAgregarProducto;
        }
        
        if(action.equalsIgnoreCase("Agregar produto")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            int codSubCat=Integer.parseInt(request.getParameter("subcat"));
            String nom = request.getParameter("nombre");
            double precio=Double.parseDouble(request.getParameter("precio"));
            int stock=Integer.parseInt(request.getParameter("stock"));
            p.setId(cod);
            p.setSubcategoria(codSubCat);
            p.setNombre(nom);
            p.setPrecio(precio);
            p.setStock(stock);
            dao_Pro.agregar(p);
            action="listarProducto";
        }
        
        if(action.equalsIgnoreCase("editarProducto")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            p=dao_Pro.listarUnProducto(cod);
            lissubCat=dao_SubCatPro.listarTodosSubCat();
            request.setAttribute("lista", lissubCat);
            request.setAttribute("prod", p);
            acceso=paginaEditarProducto;
        }
        
        if(action.equalsIgnoreCase("Editar producto")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            int codSubCat=Integer.parseInt(request.getParameter("subcat"));
            String nom = request.getParameter("nombre");
            double precio=Double.parseDouble(request.getParameter("precio"));
            int stock=Integer.parseInt(request.getParameter("stock"));
            p.setId(cod);
            p.setSubcategoria(codSubCat);
            p.setNombre(nom);
            p.setPrecio(precio);
            p.setStock(stock);
            dao_Pro.agregar(p);
            action="listarDistrito";
        }
                
        if(action.equalsIgnoreCase("eliminarProducto")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            dao_Pro.eliminar(cod);
            action="listarDistrito";
        }
        
        if(action.equalsIgnoreCase("listarProducto")){
            lisPro=dao_Pro.listarTodosProducto();
            request.setAttribute("lista", lisPro);
            acceso=paginaListarProducto;
        }
        
        //tabla CategoriaProducto
        if(action.equalsIgnoreCase("agregarCategoriaProducto")){
            acceso=paginaAgregarCategoriaProducto;
        }
        
        if(action.equalsIgnoreCase("Agregar CategoriaProducto")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            String nom = request.getParameter("nombre");
            cp.setCodigo(cod);
            cp.setNombre(nom);
            dao_CatPro.agregar(cp);
            action="listarCategoriaProducto";
        }
        
        if(action.equalsIgnoreCase("editarCategoriaProducto")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            cp=dao_CatPro.listarUnaCategoria(cod);
            request.setAttribute("catpro", cp);
            acceso=paginaEditarCategoriaProducto;
        }
        
        if(action.equalsIgnoreCase("Editar CategoriaProducto")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            String nom = request.getParameter("nombre");
            cp.setCodigo(cod);
            cp.setNombre(nom);
            dao_CatPro.editar(cp);
            action="listarCategoriaProducto";
        }
                
        if(action.equalsIgnoreCase("eliminarDistrito")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            dao_CatPro.eliminar(cod);
            action="listarCategoriaProducto";
        }
        
        if(action.equalsIgnoreCase("listarDistrito")){
            liscatPro=dao_CatPro.listarTodosCategoria();
            request.setAttribute("lista", liscatPro);
            acceso=paginaListarCategoriaProducto;
        }
        
        //tabla subCategoriaProducto
        if(action.equalsIgnoreCase("agregarSubCatPro")){
            acceso=paginaAgregarCategoriaProducto;
        }
        
        if(action.equalsIgnoreCase("Agregar subCatPro")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            int cat = Integer.parseInt(request.getParameter("categoria"));
            String nom = request.getParameter("nombre");
            sc.setId(cod);
            sc.setCategoria(cat);
            sc.setNombre(nom);
            dao_SubCatPro.agregar(sc);
            action="listarSubCatPro";
        }
        
        if(action.equalsIgnoreCase("editarSubCatPro")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            sc=dao_SubCatPro.listarUnaSubCat(cod);
            liscatPro=dao_CatPro.listarTodosCategoria();
            request.setAttribute("lista", lisPro);
            request.setAttribute("SubCatPro", sc);
            acceso=paginaEditarSubCatProducto;
        }
        
        if(action.equalsIgnoreCase("Editar SubCatPro")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            int cat = Integer.parseInt(request.getParameter("categoria"));
            String nom = request.getParameter("nombre");
            sc.setId(cod);
            sc.setCategoria(cat);
            sc.setNombre(nom);
            dao_SubCatPro.agregar(sc);
            action="listarSubCatPro";
        }
                
        if(action.equalsIgnoreCase("eliminarDistrito")){
            int cod = Integer.parseInt(request.getParameter("codigo"));
            dao_SubCatPro.eliminar(cod);
            action="listarSubCatPro";
        }
        
        if(action.equalsIgnoreCase("listarSubCatPro")){
            lissubCat=dao_SubCatPro.listarTodosSubCat();
            request.setAttribute("lista", lissubCat);
            acceso=paginaListarSubCatProducto;
        }
        
       RequestDispatcher rd=request.getRequestDispatcher(acceso);
        rd.forward(request, response);
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
