package services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import domain.Pelicula;
import repository.PeliculaDao;

@Component
public class SimplePeliculaManager implements PeliculaManager{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	 @Autowired
	    private PeliculaDao peliculaDao;
	    
	    public void setPeliculaDao(PeliculaDao peliculaDao) {
	        this.peliculaDao = peliculaDao;
	    }
	
	@Override
	public List<Pelicula> getPeliculas(String director) {
        return peliculaDao.getPeliculaList(director);
	}

	

}
