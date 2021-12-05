package cn.itcast.ks.service.impl;

import cn.itcast.ks.common.AppHttpCodeEnum;
import cn.itcast.ks.common.ResponseResult;
import cn.itcast.ks.common.threadlocal.UserThreadLocalUtils;
import cn.itcast.ks.mapper.ClassMapper;
import cn.itcast.ks.mapper.UserMapper;
import cn.itcast.ks.pojo.entity.User;
import cn.itcast.ks.service.IUserService;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;

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

}
