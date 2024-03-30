package dev.micfro.securotybcrpt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppController {

    @GetMapping("/")
    public String home() {
        return "home";
    }

    @GetMapping("/supervisors")
    public String supervisors() {
        return "supervisors";
    }

    @GetMapping("/admin")
    public String admin() {
        return "admin";
    }


}
