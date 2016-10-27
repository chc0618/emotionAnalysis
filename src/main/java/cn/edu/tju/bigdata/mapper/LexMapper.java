package cn.edu.tju.bigdata.mapper;

import cn.edu.tju.bigdata.entity.LexFormMap;
import cn.edu.tju.bigdata.mapper.base.BaseMapper;

import java.util.List;

/**
 * Created by chc on 2016/10/5.
 */
public interface LexMapper extends BaseMapper {
    public List<LexFormMap> findLexPage(LexFormMap lexFormMap);
}
