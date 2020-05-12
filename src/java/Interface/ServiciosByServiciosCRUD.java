package Interface;

import Modelo.tbEquipoByServicios;
import java.util.List;

/**
 *
 * @author Alex Diaz
 */
public interface ServiciosByServiciosCRUD {
    public List listar();
    public boolean add(tbEquipoByServicios ESDAO);
    public boolean edit(tbEquipoByServicios ESDAO);
    public boolean delete(int ID);
    public List listarDDLInventario();
    public List listarDDLServicio();
}
