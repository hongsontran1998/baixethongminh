package com.baixethongminh.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baixethongminh.constant.SystemConstant;
import com.baixethongminh.dao.UserDAO;
import com.baixethongminh.entity.User;

@Controller
public class ApiController {

	@Autowired
	private UserDAO userDAO;

	@RequestMapping(path = "card/{cardId}", method = RequestMethod.GET)
	@ResponseBody
	public String findOne(@PathVariable("cardId") String cardId) {

		User user = userDAO.findOneByCardId(cardId);
		System.out.println(user);
		String result = "1";
		if (user == null) {
			return ("0;userkhongtontai");
		}
		if (user.getEnable() == 0) {
			result = "2;" + user.getUsername();
			return result;
		}
		int price = (int) (SystemConstant.PRICE * (1 - SystemConstant.GIAM_GIA * 0.01));
		System.out.println(price);
		if (user.getTotal() - price >= 0) {
			user.setTotal(user.getTotal() - price);
			userDAO.update(user);
			result = "1";
		}

		
		result += (";" + user.getUsername());
		System.out.println("ket qua: " + result);
		return result;
	}

	/*
	 * @RequestMapping(path = "logs-table", method = RequestMethod.POST) public
	 * String logTable() { List<Log> logs = logDAO.findAll(); StringBuilder html =
	 * new StringBuilder(); html.append("<table class=\"table table-bordered\">" +
	 * "                    <tr>" +
	 * "                        <th style=\"width: 10px\">#</th>" +
	 * "                        <th>Task</th>" +
	 * "                        <th>Progress</th>" +
	 * "                        <th style=\"width: 40px\">Label</th>" +
	 * "                    </tr>"); for (Log log : logs) { html.append(
	 * "	                    <tr>" + "	                        <td>" +
	 * log.getId() + "</td>" +
	 * "	                        <td>Update software</td>" +
	 * "	                        <td>" +
	 * "	                            <div class=\"progress xs\">" +
	 * "	                                <div class=\"progress-bar progress-bar-danger\" style=\"width: 55%\"></div>"
	 * + "	                            </div>" + "	                        </td>" +
	 * "	                        <td><span class=\"badge bg-red\">55%</span></td>"
	 * + "	                    </tr>"); } html.append( "                </table>");
	 * return html.toString(); }
	 */
}
