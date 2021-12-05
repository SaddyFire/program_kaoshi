package cn.itcast.ks.service;

import cn.itcast.ks.common.ResponseResult;
import cn.itcast.ks.pojo.dtos.ShowWorkDto;

/**
 * @author SaddyFire
 * @date 2021/12/5
 * @TIME:21:47
 */
public interface WorkService {
    ResponseResult findStudentWork(ShowWorkDto showWorkDto);
}
