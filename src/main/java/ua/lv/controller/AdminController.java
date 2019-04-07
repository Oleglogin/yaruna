package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ua.lv.entity.Modelka;
import ua.lv.entity.Work;
import ua.lv.service.ModelcaService;
import ua.lv.service.WorkService;

/**
 * Created by User on 07.04.2019.
 */
@Controller
public class AdminController {
    @Autowired
    WorkService workService;
    @Autowired
    ModelcaService modelcaService;

    @GetMapping("/admin")
    public String toAdmin(Model model){
        model.addAttribute("emptyWork", new Work());
        model.addAttribute("emptyModel", new Modelka());
        return "admin";
    }
}
