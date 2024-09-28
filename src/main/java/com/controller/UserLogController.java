package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CategoryDao;
import com.model.Category;
import com.model.User;
import com.service.CategoryService;
import com.service.UserService;

@Controller
public class UserLogController {

	@Autowired
	UserService userService;

	@Autowired
	CategoryService categoryService;

	CategoryDao categoryDao;
	User user;

	@RequestMapping(value = "/signupProcess", method = RequestMethod.POST)
	public String handleForm(@ModelAttribute User _user, Model model, HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		String password = request.getParameter("userPassword");
		String passwordC = request.getParameter("userPasswordC");

		if (password.equals(passwordC)) {
			try {
				this.userService.createUser(_user);
				model.addAttribute("success", _user);
				model.addAttribute("mmsg", "Registration Successfully : " + _user.getUserId());
				request.setAttribute("msg", "Registration Successfully : " + _user.getUserId());

			} catch (Exception e) {
				model.addAttribute("mmsg", "Invalid Email Adderess !! : " + _user.getUserId());
				System.out.println(e);
			}
		} else {
			model.addAttribute("mmsg", "Password did not match !! ");
		}
		return "login";
	}

	// Authenticate Login handler

	@RequestMapping(value = "/loginProcess", method = RequestMethod.GET)
	public String handleLogin(@RequestParam("uemail") String mail, @RequestParam("upassword") String pass, Model model,
			HttpServletResponse response, HttpServletRequest request, HttpSession httpSession) throws IOException {

		User authentUser = userService.authentUser(mail, pass);

		try {
			String type = authentUser.getUserType();
			String name = authentUser.getUserName();

			if (type.equals("admin")) {
				model.addAttribute("username", name);

				List<Category> list = this.categoryService.getAllCatTitleAndIdByService();

				List<String> s = new ArrayList<String>();

				for (Category c : list) {
					System.out.println(c.getCategoryTitle() + " * " + c.getCategoryId());
					s.add(c.getCategoryTitle());
				}

				model.addAttribute("list", s);
				request.setAttribute("data", s);
				System.out.println("##########################################################");

				// Non usable
//				List<Category> ts = this.categoryService.getTilteByService();
//				for (Category c : ts) {
////					System.out.println(c.getCategoryTitle() + " * " + c.getCategoryId());
//					System.out.println("*********************"+c.getCategoryTitle());
//				}
				return "admin";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		// authentication
		if (authentUser == null) {
			model.addAttribute("mmsg", "Loged In  Denide: ");

			return "login";
		} else {
			model.addAttribute("mmsg", "Loged In Successfully : ");
			return "home";
		}
	}
}