package cn.itcast.ks.pojo.dtos;

import cn.itcast.ks.pojo.entity.Assignment;
import lombok.Data;

import java.util.List;

/**
 * @author SaddyFire
 * @date 2021/12/6
 * @TIME:9:04
 */
@Data
public class AssignmentDto extends Assignment {
    private List<String> practiceList;


}
