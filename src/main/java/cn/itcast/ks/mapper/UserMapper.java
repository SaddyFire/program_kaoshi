package cn.itcast.ks.mapper;


import cn.itcast.ks.pojo.dtos.AddIntegralDto;
import cn.itcast.ks.pojo.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author mmff
 * @since 2021-05-03
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {

    @Select("SELECT sum(integral) from user where group_id = #{groupId}")
    Integer getGroupsIntegral(@Param("groupId") Integer groupId);

    @Update("UPDATE `user` set integral = integral + #{addIntegralDto.integral} where id = #{addIntegralDto.id}")
    void addIntegral(@Param("addIntegralDto") AddIntegralDto addIntegralDto);
}
