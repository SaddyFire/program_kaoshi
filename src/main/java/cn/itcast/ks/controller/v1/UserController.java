package cn.itcast.ks.controller.v1;

import cn.itcast.ks.common.ResponseResult;
import cn.itcast.ks.pojo.dtos.AddIntegralDto;
import cn.itcast.ks.pojo.entity.User;
import cn.itcast.ks.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author SaddyFire
 * @date 2021/12/7
 * @TIME:18:31
 */
@RequestMapping("/v1/user")
@RestController
public class UserController {
    @Autowired
    private IUserService iUserService;

    //老师登录后的学生小组回显
    @GetMapping("/findByClassId")
    public ResponseResult findByClassId(){
        return iUserService.findByClassId();
    }

    //为用户添加积分
    //payload: {id: 22, integral: 2}
    @PostMapping("/addIntegral")
    public ResponseResult addIntegral(@RequestBody AddIntegralDto addIntegralDto){
        if(addIntegralDto == null){
            return new ResponseResult(0, "参数非法");
        }
        return iUserService.addIntegral(addIntegralDto);
    }

}
