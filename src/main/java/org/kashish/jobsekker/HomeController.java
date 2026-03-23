package org.kashish.jobsekker;

import org.kashish.jobsekker.model.JobPost;
import org.kashish.jobsekker.service.jobservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:3000/")
@RestController
public class HomeController {


    @Autowired
    private jobservice jobservice;

    @GetMapping("JobPosts")
    public List<JobPost> viewJob(Model model) {


        return jobservice.getJobPostList();
    }

    @GetMapping("JobPost/{post}")
    public JobPost getJobPost(@PathVariable("post") int postid) {
        return jobservice.getjobpost(postid);
    }
    @PostMapping("JobPost")
    public void addJobPost(@RequestBody JobPost jobPost) {
        jobservice.addJobPost(jobPost);
    }

    @PutMapping("JobPost")
    public JobPost updateJobPost(@RequestBody JobPost jobPost) {
        jobservice.updateJobPost(jobPost);
        return jobPost;
    }

    @DeleteMapping("JobPost/{post}")
    public String deleteJobPost(@PathVariable("post") int postid) {
        jobservice.deleteJobPost(postid);
        return "deleted" +" "+postid;
    }

    @GetMapping("load")
    public void loadinitilly() {
        jobservice.addall();


    }

}
