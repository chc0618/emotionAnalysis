package cn.edu.tju.bigdata.controller.app.service.resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.tju.bigdata.util.Common;

@Controller
@RequestMapping("/crawl")
public class CrawlController {
    @RequestMapping("/crawlText")
    public String manage(Model model) throws Exception {
        //model.addAttribute("res", findByRes());
        return Common.BACKGROUND_PATH + "/app/crawl/list";
    }
}
