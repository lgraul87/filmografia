package controllers;


import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import services.PeliculaManager;

@Controller
public class ServletController {

	protected final Log logger = LogFactory.getLog(getClass());
	
	@Autowired
	private PeliculaManager peliculaManager;

	@RequestMapping(value = "/00_menuEntrada.htm")
	public ModelAndView handleRequestindex(HttpServletRequest request, HttpServletResponse response) {
		return new ModelAndView("00_menuEntrada");
	}

	@RequestMapping(value = "/01_info.htm")
	public ModelAndView handleRequest1(HttpServletRequest request, HttpServletResponse response) {
		return new ModelAndView("01_info");
	}
	
	@RequestMapping(value = "/02_formularioConsultarDirectores.htm")
	public ModelAndView handleRequest2(HttpServletRequest request, HttpServletResponse response) {
		
		return new ModelAndView("02_formularioConsultarDirectores");
	}
	
	// ################### MOSTRAR PELICULAS ##############################
	@RequestMapping(value = "/03_MostrarPeliculasDirectores.htm")
	public ModelAndView handleRequest3(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		Map<String, Object> myModel = new HashMap<String, Object>();
		
		String director = request.getParameter("director");
		myModel.put("peliculas", this.peliculaManager.getPeliculas(director));

		myModel.put("director", director);


		logger.info("Devolviendo mostrarPeliculas view");

		return new ModelAndView("03_MostrarPeliculasDirectores", "model", myModel);

	}
}
