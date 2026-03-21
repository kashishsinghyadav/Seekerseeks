package org.kashish.jobsekker.repo;

import org.kashish.jobsekker.model.JobPost;
import org.springframework.stereotype.Repository;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Repository
public class jobrepo {

    List<JobPost> jobPostList =  new ArrayList<>(Arrays.asList(
            new JobPost(1,"Anuraag","Software Engineer",2, Arrays.asList("Java","Spring","Hibernate","MySQL")),
            new JobPost(2,"kridha","Software Engineer",2, Arrays.asList("Java","Spring","MySQL")),
            new JobPost(3,"Kashish","Software Engineer",2, Arrays.asList("Java","Spring","Hibernate","MySQL")),
            new JobPost(2,"tarun","senior Software Engineer",2, Arrays.asList("Golang","Spring","Hibernate","MySQL"))

            ));

    public List<JobPost> getJobPostList() {
        System.out.println("Job post list return");
        return jobPostList;
    }
    public void addJobinRepo(JobPost jobPost) {
        System.out.println("Job post added");
        jobPostList.add(jobPost);
    }

}
