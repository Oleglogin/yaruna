package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.lv.service.ModelcaService;
import ua.lv.service.WorkService;

/**
 * Created by User on 07.04.2019.
 */
@Controller
public class SingleController {
    @Autowired
    WorkService workService;
    @Autowired
    ModelcaService modelcaService;

    @RequestMapping(value = "portfolio-single/{id}")
    public String toPortfolio(@PathVariable("id") int id,
                              Model model){
        model.addAttribute("work",workService.findOne(id));
        return "portfolio-single";
    }
}
