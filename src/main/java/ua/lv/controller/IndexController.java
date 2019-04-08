package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ua.lv.entity.User;
import ua.lv.service.UserService;

/**
 * Created by User on 06.04.2019.
 */
@Controller
public class IndexController {
    @Autowired
    UserService userService;

    @GetMapping("/")
    public String toMain(Model model){
        model.addAttribute("emptyUser", new User());
        return "/index";
    }

    @GetMapping("/index")
    public String toIndex(Model model){
        model.addAttribute("emptyUser", new User());
        return "/index";
    }

}
