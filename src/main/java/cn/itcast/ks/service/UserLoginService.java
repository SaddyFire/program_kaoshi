package cn.itcast.ks.service;

import cn.itcast.ks.common.ResponseResult;
import cn.itcast.ks.pojo.dtos.LoginDto;

public interface UserLoginService {

    public ResponseResult login(LoginDto loginDto);

    ResponseResult findRoleByName(String mobile);
}
