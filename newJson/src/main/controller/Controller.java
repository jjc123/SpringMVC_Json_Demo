package controller;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import user.User;

@org.springframework.stereotype.Controller
public class Controller {

    @RequestMapping("toUploadPage")
    public String toUploadPage(){
        return "/JsonTest";
    }

    @RequestMapping("JsonTest")
    public @ResponseBody User JsonTest(@RequestBody User user){//转换json串类型，绑定到user上
        System.out.println(user);
        return user;
    }
}
