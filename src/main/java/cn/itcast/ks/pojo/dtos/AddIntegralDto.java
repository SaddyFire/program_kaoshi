package cn.itcast.ks.pojo.dtos;

import lombok.Data;

/**
 * 接受用户加减积分
 * @author SaddyFire
 * @date 2021/12/7
 * @TIME:20:27
 */
@Data
public class AddIntegralDto {
    //学生id
    private Integer id;
    //更新的分数
    private Integer integral;
}
