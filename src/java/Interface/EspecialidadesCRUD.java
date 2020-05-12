package Interface;

import Modelo.tbEspecialidades;
import java.util.List;

/**
 *
 * @author Alex Diaz
 */
public interface EspecialidadesCRUD {
    public List listar();
    public String add(tbEspecialidades usu);
    public boolean edit(tbEspecialidades usu);
    public boolean delete(int ID);    
}