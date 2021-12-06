package cn.itcast.ks.service.impl;

import cn.itcast.ks.common.ResponseResult;
import cn.itcast.ks.mapper.UserMapper;
import cn.itcast.ks.pojo.dtos.AddIntegralDto;
import cn.itcast.ks.pojo.entity.User;
import cn.itcast.ks.pojo.vos.UserVo;
import cn.itcast.ks.service.IUserService;
import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;
import java.util.stream.Collectors;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author mmff
 * @since 2021-05-03
 */
@Slf4j
@Service
@Transactional
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public ResponseResult findByClassId() {
        //返回学生列表
        LambdaQueryWrapper<User> lqw = new LambdaQueryWrapper<>();
        lqw.eq(User::getRoleId,2);
        List<User> users = this.list(lqw);
        List<UserVo> userVos = JSON.parseArray(JSON.toJSONString(users), UserVo.class);
        //遍历列表,相同
        userVos = userVos.stream().map(s->{
            s.setGroupsIntegral(userMapper.getGroupsIntegral(s.getGroupId()));
            return s;
        }).collect(Collectors.toList());

        return ResponseResult.okResult(userVos);
    }

    //为用户添加积分
    //payload: {id: 22, integral: 2}
    @Override
    @Transactional
    public ResponseResult addIntegral(AddIntegralDto addIntegralDto) {
        userMapper.addIntegral(addIntegralDto);
        return ResponseResult.okResult(0,"更新成功");
    }
}
