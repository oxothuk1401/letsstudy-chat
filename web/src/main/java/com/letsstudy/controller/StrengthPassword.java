package com.letsstudy.controller;

import com.letsstudy.entity.Chat;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by oxothuk1401 on 01.11.2016.
 */
@Controller
public class StrengthPassword {
    @Autowired
    SessionFactory sessionFactory;
    private static final int WEAK_STRENGTH = 1;
    private static final int FEAR_STRENGTH = 5;
    private static final int STRONG_STRENGTH = 7;

    private static final String WEAK_COLOR = "#FF0000";
    private static final String FEAR_COLOR = "#FF9900";
    private static final String STRONG_COLOR = "#0BFF0C";

    @Transactional
    @RequestMapping(value = "/checkStrength", method = RequestMethod.POST, produces = { "text/html; charset=UTF-8" })
//    @RequestMapping(value = "/checkStrength", method = RequestMethod.GET, produces = { "text/html; charset=UTF-8" })
    public @ResponseBody
    ModelAndView checkStrength(@RequestParam("img") String img) {
//    String checkStrength(@RequestParam String password) {
        ModelAndView modelAndView = new ModelAndView();
        Query query = sessionFactory.getCurrentSession().createQuery("from Chat WHERE img = :img")
                .setParameter("img", img);

        List<Chat> showThisChat = query.list();
        List<Chat> res = sessionFactory.getCurrentSession().createSQLQuery("select img from Chat GROUP BY img").list();
        modelAndView.addObject("res", res);
        modelAndView.addObject("showThisChat", showThisChat);
        modelAndView.setViewName("chat");
        return modelAndView;
//        String result = "<span style=\"color:%s; font-weight:bold;\">%s</span>";
//
//        if (password.length() >= WEAK_STRENGTH & password.length() < FEAR_STRENGTH) {
//            return String.format(result, WEAK_COLOR, "WEAK");
//        } else if (password.length() >= FEAR_STRENGTH & password.length() < STRONG_STRENGTH) {
//            return String.format(result, FEAR_COLOR, "FEAR");
//        } else if (password.length() >= STRONG_STRENGTH) {
//            return String.format(result, STRONG_COLOR, "STRONG");
//        }
//        return "";
    }
}
