package cn.edu.tju.bigdata.controller.app.service.resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.tju.bigdata.controller.index.BaseController;
import cn.edu.tju.bigdata.util.Common;

/**
 * Created by chc on 2016/10/18.
 */
@Controller
@RequestMapping("/emotionShow")
public class EmotionShowController extends BaseController {

	
	
    @RequestMapping("/newsEmotion")
    public String newsEmotion(Model model) throws Exception {
        //model.addAttribute("res", findByRes());
        return Common.BACKGROUND_PATH + "/app/emotionShow/newsEmotion";
    }
    
    @RequestMapping("/emotionComment")
    public String emotionComment(Model model) throws Exception {
        //model.addAttribute("res", findByRes());
        return Common.BACKGROUND_PATH + "/app/emotionShow/emotionComment";
    }
    @RequestMapping("/showResult")
    public String showResult(Model model) throws Exception {
        //model.addAttribute("res", findByRes());
        return Common.BACKGROUND_PATH + "/app/emotionShow/showResult";
    }
}
