package cn.itcast.ks.service;



import cn.itcast.ks.common.ResponseResult;
import cn.itcast.ks.pojo.dtos.AddIntegralDto;
import cn.itcast.ks.pojo.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author mmff
 * @since 2021-05-03
 */
public interface IUserService extends IService<User> {

    //查询所有学生
    ResponseResult findByClassId();
    //为用户添加积分
    ResponseResult addIntegral(AddIntegralDto addIntegralDto);
}
