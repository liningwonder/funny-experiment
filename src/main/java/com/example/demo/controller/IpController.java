package com.example.demo.controller;

import com.example.demo.utils.IpUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
public class IpController {

    @GetMapping("/")
    public String getIp(HttpServletRequest request) {
        return IpUtils.getIpFromRequest(request);
    }

}
