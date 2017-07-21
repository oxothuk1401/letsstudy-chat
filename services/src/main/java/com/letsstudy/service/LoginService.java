//package by.htp.library.service;
//
//import by.htp.library.dao.UserOperationDAO;
//import by.htp.library.entity.User;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//@Service
//public class LoginService {
//    @Autowired
//    private UserOperationDAO userOperationDAO;
//
////    Not used
//    public String checkLogin(String login) {
//
//        User user = userOperationDAO.checkLogin(login);
//        if(user == null){
//            return "Логин занят";
//        }
//        return "GOOOD";
//    }
//}