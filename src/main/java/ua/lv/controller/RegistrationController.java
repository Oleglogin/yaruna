package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.lv.entity.User;
import ua.lv.service.UserService;

/**
 * Created by User on 07.04.2019.
 */
@Controller
public class RegistrationController {
    @Autowired
    UserService userService;

    @RequestMapping(value = "/user/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("emptyUser")User user){
        userService.save(user);
        return "index";
    }
}
