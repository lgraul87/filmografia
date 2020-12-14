package repository;

import java.util.List;

import domain.Pelicula;

public interface PeliculaDao {

	public List<Pelicula> getPeliculaList(String director);
	
	public void savePelicula(Pelicula pelicula);

}
