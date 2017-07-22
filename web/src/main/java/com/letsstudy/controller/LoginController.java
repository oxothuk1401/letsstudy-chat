package com.letsstudy.controller;

import com.letsstudy.entity.Chat;
import com.letsstudy.entity.User;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Transactional
@Controller
public class LoginController {

    @Autowired
    SessionFactory sessionFactory;

    //переход на главную страницу
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String main() {
        return "index";
    }

    //переход на страницу оплаты
    @RequestMapping(value = "/payment", method = RequestMethod.GET)
    public String payment() {
        return "payment";
    }

    //переход на страницу чата
    @RequestMapping(value = "/chat", method = RequestMethod.GET)
    public String chat() {
        return "chat";
    }

    //переход на страницу поиска
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search() {
        return "search";
    }


    //переход на страницу просмотра профиля учителя
    @RequestMapping(value = "/show_profile", method = RequestMethod.GET)
    public String showProfile() {
        return "show_profile";
    }

    //переход на страницу календаря
    @RequestMapping(value = "/show_calendar", method = RequestMethod.GET)
    public String showCalendar() {
        return "show_calendar";
    }

    @RequestMapping(value = "/checkEmail", method = RequestMethod.GET, produces = { "text/html; charset=UTF-8" })
    public @ResponseBody
    String checkStrength(@RequestParam String userEmail) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(User.class);
        criteria.add(Restrictions.eq("email", userEmail));
        String result = "<p style=\"color:%s;\">%s</p>";
        User user = (User) criteria.uniqueResult();
        if(user == null){
            return String.format(result, "#0BFF0C", "Логин свободен");
        }else {
            return String.format(result, "#FF0000", "Логин занят");
        }
    }


    @Transactional
    @RequestMapping(value = "/autorization", method = RequestMethod.POST)
    public ModelAndView autorization(@RequestParam("autEmail") String autEmail,
                                     @RequestParam("autPsw") String autPsw,
                                     HttpSession httpSession) {
        ModelAndView modelAndView = new ModelAndView();
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(User.class);
        criteria.add(Restrictions.eq("email", autEmail));
        criteria.add(Restrictions.eq("password", autPsw));
        String sql = "UPDATE reg.users SET status = 1 WHERE email='" + autEmail +"'";
        sessionFactory.getCurrentSession().createSQLQuery(sql).executeUpdate();
        User user = (User) criteria.uniqueResult();
        if(user == null){
            System.out.println("нет пользователя");
            modelAndView.setViewName("index");
        }else {
            httpSession.setAttribute("userSession", user);
            modelAndView.setViewName("user_page");
        }
        return modelAndView;
    }
    @RequestMapping(value = "/invalidate", method = RequestMethod.GET)
    public ModelAndView invalidate(@RequestParam("email") String autEmail,
            HttpSession httpSession) {
        ModelAndView modelAndView = new ModelAndView();
        String sql = "UPDATE reg.users SET status = 0 WHERE email='" + autEmail +"'";
        sessionFactory.getCurrentSession().createSQLQuery(sql).executeUpdate();
        httpSession.invalidate();
        modelAndView.setViewName("index");
        return modelAndView;
    }

    //регистрация
    @Transactional
    @RequestMapping(value = "/regist_user", method = RequestMethod.POST)
    public ModelAndView registrUser(@RequestParam("userEmail") String userEmail,
                                    @RequestParam("userName") String userName,
                                    @RequestParam("role") String role,
                                    @RequestParam("userPsw") String userPsw,
                                    HttpSession httpSession, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        User user = new User();
        user.setEmail(userEmail);
        user.setUsername(userName);
        user.setPassword(userPsw);
        user.setRole(role);
        String sql = "INSERT INTO reg.users (email, user_name, password, role) " +
                "VALUES (" + "'" + userEmail + "','" + userName + "','" + userPsw + "','" + role + "')";
        try{
            sessionFactory.getCurrentSession().createSQLQuery(sql).executeUpdate();
            httpSession.setAttribute("userSession", user);
            modelAndView.setViewName("user_page");
            return modelAndView;
        } catch (Exception e){
            request.setAttribute("error", true);
            modelAndView.setViewName("index");
            return modelAndView;
        }


    }

    @Transactional
    @RequestMapping(value = "/regist_teacher", method = RequestMethod.POST)
    public ModelAndView registrTeacher(@RequestParam("teachEmail") String teachEmail,
                                       @RequestParam("teachName") String teachName,
                                       @RequestParam("role") String role,
                                       @RequestParam("teachPsw") String teachPsw,
                                       HttpSession httpSession, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        User user = new User();
        user.setEmail(teachEmail);
        user.setUsername(teachName);
        user.setPassword(teachPsw);
        user.setRole(role);
        String sql = "INSERT INTO reg.users (email, user_name, password, role) " +
                "VALUES (" + "'" + teachEmail + "','" + teachName + "','" + teachPsw + "','" + role + "')";
        try{
        sessionFactory.getCurrentSession().createSQLQuery(sql).executeUpdate();
        httpSession.setAttribute("teacherSession", user);
        modelAndView.setViewName("teacher_page");
        return modelAndView;
        } catch (Exception e){
            request.setAttribute("error", true);
            modelAndView.setViewName("index");
            return modelAndView;
        }
    }

    //    Отобразить все чаты сгрупированные по ид
    @Transactional
    @RequestMapping(value = "/show_my_chats", method = RequestMethod.POST)
    public ModelAndView showMyChats(HttpSession session,HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        List<Chat> res = sessionFactory.getCurrentSession().createQuery("from Chat GROUP BY img").list();
        List<String> img = new ArrayList<>();
        for (Chat resault: res){
            img.add(resault.getImg());
        }
        session.setAttribute("res", res);
        session.setAttribute("img", img);
        modelAndView.setViewName("chat");
        return modelAndView;
    }

    //    Посмотреть конкретынй чат
    @Transactional
    @RequestMapping(value = "/show_this_chat", method = RequestMethod.POST)
    public ModelAndView showThisChat(@RequestParam("img") String img) {
        ModelAndView modelAndView = new ModelAndView();
        Query query = sessionFactory.getCurrentSession().createQuery("from Chat WHERE img = :img")
                .setParameter("img", img);
        List<Chat> showThisChat = query.list();
        modelAndView.addObject("showThisChat", showThisChat);
        modelAndView.setViewName("chat");
        return modelAndView;
    }

    //    Отправить сообщение
    @Transactional
    @RequestMapping(value = "/send_mssg", method = RequestMethod.POST)
    public ModelAndView sendMssg(@RequestParam("message") String message,
                                 @RequestParam("idTeacher") String idTeacher,
                                 @RequestParam("date") String date,
                                 @RequestParam("username") String username,
                                 @RequestParam("idStudent") String idStudent,
                                 @RequestParam("img") String img, HttpSession httpSession) {
        ModelAndView modelAndView = new ModelAndView();
        Chat chat = new Chat();
        chat.setMessage(message);
        chat.setDate(date);
        chat.setUsername(username);
        httpSession.setAttribute("chat", chat);
        modelAndView.setViewName("message");
        return modelAndView;
    }

    @RequestMapping(value = "/time", method = RequestMethod.GET)
    public ModelAndView time() {
        Date date = new Date();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("chat");
        modelAndView.addObject("time", date.toString());
        return modelAndView;
    }
}
