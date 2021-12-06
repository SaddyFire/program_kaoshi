package cn.itcast.ks.mapper;

import cn.itcast.ks.pojo.entity.KsGroup;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.fasterxml.jackson.databind.ser.Serializers;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author SaddyFire
 * @date 2021/12/7
 * @TIME:20:42
 */
@Mapper
public interface KsGroupMapper extends BaseMapper<KsGroup> {

}
