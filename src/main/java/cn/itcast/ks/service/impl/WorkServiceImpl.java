package cn.itcast.ks.service.impl;

import cn.itcast.ks.common.ResponseResult;
import cn.itcast.ks.mapper.WorkMapper;
import cn.itcast.ks.pojo.dtos.ShowWorkDto;
import cn.itcast.ks.pojo.entity.Assignment;
import cn.itcast.ks.service.WorkService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author SaddyFire
 * @date 2021/12/5
 * @TIME:21:47
 */
@Service
public class WorkServiceImpl implements WorkService {
    @Autowired
    private WorkMapper workMapper;


    @Override
    public ResponseResult findStudentWork(ShowWorkDto showWorkDto) {
        Date time = showWorkDto.getTime();
        LambdaQueryWrapper<Assignment> lqw = new LambdaQueryWrapper<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date parse = null;
        try {
            parse = dateFormat.parse(dateFormat.format(time));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        lqw.eq(Assignment::getType,showWorkDto.getType()).eq(Assignment::getCreatedOn,parse);
        List<Assignment> assignments = workMapper.selectList(lqw);
        return new ResponseResult(1,assignments);
    }
}
