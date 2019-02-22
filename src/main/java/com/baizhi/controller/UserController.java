package com.baizhi.controller;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.UUID;

@Controller
@RequestMapping("user")
public class UserController {
    @Resource
    private UserService userService;

    @RequestMapping("login")
    public String login(User user, HttpSession session) {
        User user1 = userService.login(user);
        if (user1 != null) {
            return "showDepartment";
        } else {
            session.setAttribute("error", "用户名或者密码输入错误");
            return "login";
        }
    }

    //注册
    @RequestMapping("register")
    public String register(User user, MultipartFile image) throws Exception {
        String newName = UUID.randomUUID().toString() + "-" + image.getOriginalFilename();
        File file = new File("F:\\服务器", newName);
        image.transferTo(file);
        String path = file.getAbsolutePath();
        user.setPic(path);
        userService.register(user);
        return "login";
    }
}
