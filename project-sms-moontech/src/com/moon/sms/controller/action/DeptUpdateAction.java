package com.moon.sms.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moon.sms.dao.DeptDAO;
import com.moon.sms.dto.DeptVO;



public class DeptUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DeptVO dVo = new DeptVO();

		System.out.println("-------------empUpdateAction-------------");
		
		dVo.setDeptSq(Integer.parseInt(request.getParameter("deptSq").trim()));
		dVo.setDeptNm(request.getParameter("deptNm"));

		

		
		DeptDAO dDao = DeptDAO.getInstance();
		dDao.modify(dVo);

		new DeptListAction().execute(request, response);
	}
}