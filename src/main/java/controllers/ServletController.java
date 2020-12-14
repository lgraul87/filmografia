package controllers;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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

	List<String> listaDirectores = new ArrayList<String>();

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
	public ModelAndView handleRequest3(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Map<String, Object> myModel = new HashMap<String, Object>();

		String director = request.getParameter("director");

		listaDirectores.add(director);

		request.getSession().setAttribute("listaDirectores", listaDirectores);

		myModel.put("peliculas", this.peliculaManager.getPeliculas(director));

		myModel.put("director", director);

		logger.info("Devolviendo mostrarPeliculas view");

		return new ModelAndView("03_MostrarPeliculasDirectores", "model", myModel);

	}

	@RequestMapping(value = "/04_DirectoresConsultados.htm")
	public ModelAndView handleRequest4(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Map<String, Object> myModel = new HashMap<String, Object>();

		myModel.put("directores", request.getSession().getAttribute("listaDirectores"));

		logger.info("Devolviendo mostrarPeliculas view");

		return new ModelAndView("04_DirectoresConsultados", "model", myModel);

	}

	@RequestMapping(value = "/05_PeliculasDirectoresNuevaSesion.htm")
	public ModelAndView handleRequest5(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<String> listaDirectores = new ArrayList<String>();
		
		request.getSession().setAttribute("listaDirectores", listaDirectores);

		logger.info("Devolviendo mostrarPeliculas view");

		return new ModelAndView("02_formularioConsultarDirectores");

	}

	// ################### LOGIN ##############################

	@RequestMapping(value = "/06_login.htm")
	public ModelAndView handleRequest6(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		return new ModelAndView("06_login");

	}
}
