package com.aishang.shop10_back2.controller;

import com.aishang.shop10_back2.po.User;
import com.aishang.shop10_back2.service.IUserService;
import com.sun.deploy.net.HttpResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@RequestMapping("/user")
@Controller
public class UserController {

    @Resource
    private IUserService userService;

    @RequestMapping("login")
    public String login(){
        System.out.println("okokokoko");
        return "loginPage";
    }

    @RequestMapping("doLogin")
    public String doLogin(User user, Integer save, HttpSession session, Model model, HttpServletResponse response){
        User u = userService.findUserForLogin(user);
        if(u == null){
            //用户名秘密错误
            model.addAttribute("msg","用户名或密码错误>>！");
            return "login";
        }else{
            // 成功
            //将user存入session
            session.setAttribute("user",u);
            System.out.println(u);
            //cookie处理
            Cookie nameCookie = new Cookie("username",user.getUsername());
            Cookie pwdCookie = new Cookie("password",user.getPassword());
            // 判读cookie状态
            if(save!=null){
                nameCookie.setMaxAge(60*60*24*7);
                pwdCookie.setMaxAge(60*60*24*7);
            }else{
                nameCookie.setMaxAge(0);
                pwdCookie.setMaxAge(0);
            }
            nameCookie.setPath("/");
            pwdCookie.setPath("/");

            response.addCookie(nameCookie);
            response.addCookie(pwdCookie);
            return "index";
        }
    }
}
