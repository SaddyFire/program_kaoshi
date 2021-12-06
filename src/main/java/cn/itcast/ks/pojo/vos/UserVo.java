package cn.itcast.ks.pojo.vos;

import cn.itcast.ks.pojo.entity.User;
import lombok.Data;

/**
 * @author SaddyFire
 * @date 2021/12/7
 * @TIME:21:33
 */
@Data
public class UserVo extends User {
    private Integer groupsIntegral;
}
