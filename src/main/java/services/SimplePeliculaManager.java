package services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import domain.Pelicula;
import repository.EmployeeDao;
import repository.PeliculaDao;

@Component
public class SimplePeliculaManager implements PeliculaManager{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	 @Autowired
	    private PeliculaDao peliculaDao;
	    
	    public void setEmployeeDao(EmployeeDao employeeDao) {
	        this.employeeDao = employeeDao;
	    }
	
	@Override
	public List<Pelicula> getPeliculas() {
		// TODO Auto-generated method stub
		return null;
	}

}
