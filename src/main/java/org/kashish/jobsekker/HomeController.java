package org.kashish.jobsekker;

import org.kashish.jobsekker.model.JobPost;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @GetMapping({"/","/home"})
    public String home() {
        System.out.println("Home page");
        return "dashboard";
    }

    @GetMapping("/addjob")
    public String postjob() {
        return "addjob";
    }

    @PostMapping("/handleForm")
    public String sucess(JobPost jobPost) {
        return "sucess";
    }
}
