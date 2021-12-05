package cn.itcast.ks.controller.v1;

import cn.itcast.ks.common.PageResponseResult;
import cn.itcast.ks.common.ResponseResult;
import cn.itcast.ks.pojo.dtos.ShowWorkDto;
import cn.itcast.ks.service.WorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author SaddyFire
 * @date 2021/12/5
 * @TIME:21:45
 */
@RequestMapping("/v1/work")
@RestController
public class WorkController {
    @Autowired
    private WorkService workService;

    /**
     * Request URL: http://localhost:9001/v1/work/findStudentWork
     * Request Method: POST
     * payload: {time: "2021-12-05T15:17:28.362Z", type: 2}
     * response: ResponseResult
     * @param showWorkDto
     * @return
     */
    @PostMapping("/findStudentWork")
    public ResponseResult findStudentWork(@RequestBody ShowWorkDto showWorkDto){
        return workService.findStudentWork(showWorkDto);
    }
}
