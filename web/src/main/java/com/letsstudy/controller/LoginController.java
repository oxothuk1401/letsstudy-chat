package com.letsstudy.controller;
import com.letsstudy.entity.Chat;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;

@Transactional
@Controller
@SessionAttributes("showThisChat")
public class LoginController {
    private String localPer;

    @Autowired
    SessionFactory sessionFactory;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String main() {
        return "index";
    }

    @RequestMapping(value = "/payment", method = RequestMethod.GET)
    public String payment() {
        return "payment";
    }
    @RequestMapping(value = "/chat", method = RequestMethod.GET)
    public String chat() {
        return "chat";
    }
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search() {
        return "search";
    }

    @RequestMapping(value = "/time", method = RequestMethod.GET)
    public ModelAndView time() {
        Date date = new Date();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("chat");
        modelAndView.addObject("time", date.toString());
        return  modelAndView;
    }


    @Transactional
    @RequestMapping(value = "/show_my_chats", method = RequestMethod.POST)
    public ModelAndView showMyChats() {
        ModelAndView modelAndView = new ModelAndView();
        List res = sessionFactory.getCurrentSession().createQuery("from Chat group by img").list();
//        List res = sessionFactory.getCurrentSession().createQuery("from Chat GROUP BY img").list();
//        List<Chat> res = sessionFactory.getCurrentSession().createSQLQuery("Select * from reg.chat GROUP BY img").list();
        modelAndView.addObject("res", res);
        modelAndView.setViewName("chat");
        return modelAndView;
    }

    @Transactional
    @RequestMapping(value = "/show_this_chat", method = RequestMethod.POST)
    public ModelAndView showThisChat(@RequestParam("img") String img){
        ModelAndView modelAndView = new ModelAndView();
        Query query = sessionFactory.getCurrentSession().createQuery("from Chat WHERE img = :img")
                .setParameter("img", img);
        localPer = img;
        List<Chat> showThisChat = query.list();
        List res = sessionFactory.getCurrentSession().createQuery("from Chat").list();
//        List res = sessionFactory.getCurrentSession().createQuery("from Chat GROUP BY img").list();
        modelAndView.addObject("res", res);
        modelAndView.addObject("showThisChat", showThisChat);
        modelAndView.setViewName("chat");
        return modelAndView;
    }

    @Transactional
    @RequestMapping(value = "/send_mssg", method = RequestMethod.POST)
    public ModelAndView sendMssg(@RequestParam("password") String password){
        ModelAndView modelAndView = new ModelAndView();
        sessionFactory.getCurrentSession().createSQLQuery("INSERT INTO  chat (Id_student,id_teacher,message, username, img) VALUES (4,4,awdawd, wadawd, wadawd)");

        modelAndView.addObject("showThisChat", localPer );
        modelAndView.setViewName("message");
        return modelAndView;
    }

}
