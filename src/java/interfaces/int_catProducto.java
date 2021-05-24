package interfaces;

import java.util.ArrayList;
import modelo.categoria_producto;


public interface int_catProducto {
    public boolean agregar(categoria_producto cp);
    public boolean editar(categoria_producto cp);
    public boolean eliminar(int cod);
    public categoria_producto listarUnaCategoria(int id);
    public ArrayList<categoria_producto> listarTodosCategoria();
    
}
