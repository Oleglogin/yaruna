package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.lv.dao.ElseImgDAO;
import ua.lv.entity.ElseImg;
import ua.lv.service.ElseImgService;
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

    @RequestMapping(value = "elseImg/{id}")
    public String toElseImg(Model model,
                            @PathVariable("id") int id){
        model.addAttribute("emptyElseImg", new ElseImg());
        model.addAttribute("work",workService.findOne(id));
        model.addAttribute("elseImgList", elseImgService.elseImgList());
        return "elseImg";
    }

}
