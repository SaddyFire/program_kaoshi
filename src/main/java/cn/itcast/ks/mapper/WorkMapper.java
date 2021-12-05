package cn.itcast.ks.mapper;

import cn.itcast.ks.pojo.entity.Assignment;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author SaddyFire
 * @date 2021/12/5
 * @TIME:21:49
 */
@Mapper
public interface WorkMapper extends BaseMapper<Assignment> {
}
