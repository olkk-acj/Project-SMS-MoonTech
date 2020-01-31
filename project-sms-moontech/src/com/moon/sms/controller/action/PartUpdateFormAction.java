package com.moon.sms.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moon.sms.dao.PartDAO;
import com.moon.sms.dto.PartVO;



public class PartUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "/part/partUpdate.jsp";
		String i = request.getParameter("partSq");
		int partSq = Integer.parseInt(i);
		
		System.out.println("modify partSq :" + partSq);
		
		PartDAO pDao = PartDAO.getInstance();
		PartVO pVo = pDao.read(partSq);
		
		request.setAttribute("part", pVo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}
}
