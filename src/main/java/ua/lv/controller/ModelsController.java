package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.lv.entity.Modelka;
import ua.lv.service.ModelcaService;

/**
 * Created by User on 07.04.2019.
 */
@Controller
public class ModelsController {
    @Autowired
    ModelcaService modelcaService;


    @GetMapping("/model")
    public String toModels(Model model){
        model.addAttribute("modelList", modelcaService.findAll());
        return "model";
    }

    @RequestMapping(value = "/model/add", method = RequestMethod.POST)
    public String addModel(@ModelAttribute("emptyModel") Modelka modelka){
        modelcaService.addModelca(modelka);
        return "redirect:/admin";
    }

}
