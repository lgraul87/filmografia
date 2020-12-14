package controllers;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ServletController {

	protected final Log logger = LogFactory.getLog(getClass());

	@RequestMapping(value = "/00_menuEntrada.htm")
	public ModelAndView handleRequestindex(HttpServletRequest request, HttpServletResponse response) {
		return new ModelAndView("00_menuEntrada");
	}

}
