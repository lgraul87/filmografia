package services;

import java.io.Serializable;
import java.util.List;
import domain.Pelicula;


public interface PeliculaManager extends Serializable{

	public List<Pelicula>  getPeliculas();

}
