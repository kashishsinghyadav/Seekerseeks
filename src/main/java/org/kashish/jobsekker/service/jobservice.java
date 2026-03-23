package org.kashish.jobsekker.service;

import org.kashish.jobsekker.model.JobPost;
import org.kashish.jobsekker.repo.jobrepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Service
public class jobservice {

//    List<JobPost> jobPostList =  new ArrayList<>(Arrays.asList(
//            new JobPost(1,"Anuraag","Software Engineer",2, Arrays.asList("Java","Spring","Hibernate","MySQL")),
//            new JobPost(2,"kridha","Software Engineer",2, Arrays.asList("Java","Spring","MySQL")),
//            new JobPost(3,"Kashish","Software Engineer",2, Arrays.asList("Java","Spring","Hibernate","MySQL")),
//            new JobPost(2,"tarun","senior Software Engineer",2, Arrays.asList("Golang","Spring","Hibernate","MySQL"))
//
//    ));


    @Autowired
    private jobrepo jobrepo;

    public void addJobPost(JobPost jobPost) {
//        System.out.println("Job post added");
//        jobrepo.addJobinRepo(jobPost);
        jobrepo.save(jobPost);
    }

    public List<JobPost> getJobPostList() {
        return jobrepo.findAll();
    }

    public JobPost getjobpost(int postid) {
        return jobrepo.findById(postid).orElse(null);

    }

    public void updateJobPost(JobPost jobPost) {
        jobrepo.save(jobPost);
    }

    public void deleteJobPost(int postid) {

            jobrepo.deleteById(postid);


    }

    public void addall() {
        List<JobPost> jobPostList =  new ArrayList<>(Arrays.asList(
                new JobPost(1,"Anuraag","Software Engineer",2, Arrays.asList("Java","Spring","Hibernate","MySQL")),
                new JobPost(2,"kridha","Software Engineer",2, Arrays.asList("Java","Spring","MySQL")),
                new JobPost(3,"Kashish","Software Engineer",2, Arrays.asList("Java","Spring","Hibernate","MySQL")),
                new JobPost(2,"tarun","senior Software Engineer",2, Arrays.asList("Golang","Spring","Hibernate","MySQL"))

        ));
        jobrepo.saveAll(jobPostList);

    }
}

