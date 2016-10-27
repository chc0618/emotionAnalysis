package cn.edu.tju.bigdata.controller.app.service.resource;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.tju.bigdata.annotation.SystemLog;
import cn.edu.tju.bigdata.controller.index.BaseController;
import cn.edu.tju.bigdata.entity.LexFormMap;
import cn.edu.tju.bigdata.entity.ResUserFormMap;
import cn.edu.tju.bigdata.entity.RiskFormMap;
import cn.edu.tju.bigdata.entity.UserFormMap;
import cn.edu.tju.bigdata.entity.UserGroupsFormMap;
import cn.edu.tju.bigdata.exception.SystemException;
import cn.edu.tju.bigdata.mapper.LexMapper;
import cn.edu.tju.bigdata.mapper.RiskMapper;
import cn.edu.tju.bigdata.plugin.PageView;
import cn.edu.tju.bigdata.util.Common;
import cn.edu.tju.bigdata.util.PasswordHelper;


/**
 * Created by chc on 2016/10/18.
 */
@Controller
@RequestMapping("/emotionCal")
public class EmotionCalController extends BaseController {
    @Inject
    private LexMapper lexMapper;
	
    @RequestMapping("/wordExpand")
    public String manage(Model model) throws Exception {
        model.addAttribute("res", findByRes());
        return Common.BACKGROUND_PATH + "/app/emotionCal/wordExpand";
    }
    
    @ResponseBody
    @RequestMapping("/findByPage")
    public PageView findByPage( String pageNow,
                                String pageSize,String column,String sort) throws Exception {
    	LexFormMap lexFormMap = getFormMap(LexFormMap.class);
    	lexFormMap=toFormMap(lexFormMap, pageNow, pageSize, lexFormMap.getStr("orderby"));
    	lexFormMap.put("column", column);
    	lexFormMap.put("sort", sort);
        pageView.setRecords(lexMapper.findLexPage(lexFormMap));//不调用默认分页,调用自已的mapper中findUserPage
        //pageView.setRecords(riskMapper.findByPage(riskFormMap));//调用默认分页
        return pageView;
    }
    

	@RequestMapping("/addLex")
	public String addUI(Model model) throws Exception {
		return Common.BACKGROUND_PATH + "/app/emotionCal/add";
	}

	@ResponseBody
	@RequestMapping("/addLexEntity")
	@SystemLog(module="情感词典管理",methods="情感词典管理-新增词")//凡需要处理业务逻辑的.都需要记录操作日志
	@Transactional(readOnly=false)//需要事务操作必须加入此注解
	public String addEntity(){
		try {
	    	LexFormMap lexFormMap = getFormMap(LexFormMap.class);
	    	lexMapper.addEntity(lexFormMap);
			
		} catch (Exception e) {
			 throw new SystemException("添加情感词异常");
		}
		return "success";
	}

	@ResponseBody
	@RequestMapping("/deleteEntity")
	@Transactional(readOnly=false)//需要事务操作必须加入此注解
	@SystemLog(module="情感词典管理",methods="情感词典管理-编辑增词")//凡需要处理业务逻辑的.都需要记录操作日志
	public String deleteEntity() throws Exception {
		String[] ids = getParaValues("ids");
		for (String id : ids) {
			lexMapper.deleteByAttribute("id", id, LexFormMap.class);
		}
		return "success";
	}

	@RequestMapping("/editLex")
	public String editUI(Model model) throws Exception {
		String id = getPara("id");
		if(Common.isNotEmpty(id)){
			model.addAttribute("lex", lexMapper.findbyFrist("id", id, LexFormMap.class));
		}
		return Common.BACKGROUND_PATH + "/app/emotionCal/edit";
	}

	@ResponseBody
	@RequestMapping("/editLexEntity")
	@Transactional(readOnly=false)//需要事务操作必须加入此注解
	@SystemLog(module="情感词典管理",methods="情感词典管理-修改情感词")//凡需要处理业务逻辑的.都需要记录操作日志
	public String editEntity() throws Exception {
    	LexFormMap lexFormMap = getFormMap(LexFormMap.class);
    	String id = (String)lexFormMap.get("id");
//		System.out.println("****************************************::"+id);
		lexMapper.deleteByAttribute("id", id, LexFormMap.class);
		lexFormMap.put("id", id);
    	lexMapper.addEntity(lexFormMap);		
		return "success";
	}
}
