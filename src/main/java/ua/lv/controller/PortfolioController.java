package ua.lv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ua.lv.entity.Work;
import ua.lv.service.WorkService;

/**
 * Created by User on 06.04.2019.
 */
@Controller
public class PortfolioController {
    @Autowired
    WorkService workService;

    @GetMapping("/portfolio")
    public String toPortfolio(Model model){
        model.addAttribute("workList",workService.workList());
        return "portfolio";
    }
    @RequestMapping(value = "/work/add", method = RequestMethod.POST)
    public String addWork(@ModelAttribute("emptyWork") Work work){
        workService.addWork(work);
        return "redirect:/admin";
    }

    @RequestMapping(value = "portfolioRemove/{id}")
    public String deleteWork(@PathVariable("id")int id){
        workService.deleteWork(id);
        return "redirect:/portfolio";
    }
}
