package repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import domain.Pelicula;

@Repository(value = "employeeDao")
public class JPAPeliculaDao implements PeliculaDao {

	private EntityManager em = null;

	@PersistenceContext
	public void setEntityManager(EntityManager em) {
		this.em = em;
	}
	
	@Transactional(readOnly = true)
	@SuppressWarnings("unchecked")
	public List<Pelicula> getPeliculaList(String director) {
		return em.createQuery("select titulo from Pelicula  where director = '"+director+"'").getResultList();
	}
	 
	

	@Transactional(readOnly = false)
	public void savePelicula(Pelicula pelicula) {
		em.merge(pelicula);
	}

	
}
