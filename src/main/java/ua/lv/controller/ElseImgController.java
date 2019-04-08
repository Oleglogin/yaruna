package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.lv.dao.ElseImgDAO;
import ua.lv.entity.ElseImg;
import ua.lv.entity.Modelka;
import ua.lv.entity.Work;
import ua.lv.service.ElseImgService;
import ua.lv.service.ModelcaService;
import ua.lv.service.WorkService;

/**
 * Created by User on 08.04.2019.
 */
@Controller
public class ElseImgController {
    @Autowired
    ElseImgService elseImgService;
    @Autowired
    WorkService workService;
    @Autowired
    ModelcaService modelcaService;

    @RequestMapping(value = "elseImg/{id}")
    public String toElseImg(Model model,
                            @PathVariable("id") int id){
        model.addAttribute("emptyElseImg", new ElseImg());
        model.addAttribute("work",workService.findOne(id));
        model.addAttribute("models",modelcaService.findOne(id));
        model.addAttribute("elseImgList", elseImgService.elseImgList());
        return "elseImg";
    }

    @RequestMapping(value = "/elseImg/add/{id}", method = RequestMethod.POST)
    public String addElseImg(@ModelAttribute("emptyElseImg")ElseImg elseImg,
                             Model model,
                             @PathVariable("id")int id){
        Work work = workService.findOne(id);
        Modelka modelka = modelcaService.findOne(id);
        elseImg.setWork(work);
        elseImg.setModelka(modelka);
        elseImgService.addElseImg(elseImg);
//        model.addAttribute("emptyElseImg", new ElseImg());
        model.addAttribute("work",workService.findOne(id));
        model.addAttribute("models",modelcaService.findOne(id));
        model.addAttribute("elseImgList", elseImgService.elseImgList());
        return "elseImg";

    }

}
