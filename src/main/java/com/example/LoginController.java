package com.example.user;

import com.example.user.UserServiceImpl;
import com.example.user.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/login")
public class LoginController {

    @Autowired
    UserServiceImpl service;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login.jsp";
    }


    @RequestMapping(value = "/loginOK", method = RequestMethod.POST)
    public String loginCheck(HttpSession session, UserVO vo) {
        String returnURL = "";
        if (session.getAttribute("login")!=null) {
            session.removeAttribute("login.jsp");
        }

        UserVO loginvo= service.getUser(vo);
        if (loginvo!=null) {
            System.out.println("로그인 성공!!");
            session.setAttribute("login", loginvo);
            returnURL = "redirect:/board/list";
        }
        else {
            System.out.println("로그인 실패!!");
            returnURL = "redirect:/login.jsp/login.jsp";
        }

        return returnURL;
    }


    @RequestMapping(value = "/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login/login";
    }
}