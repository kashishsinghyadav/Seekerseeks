package org.kashish.jobsekker.service;

import org.kashish.jobsekker.model.JobPost;
import org.kashish.jobsekker.repo.jobrepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class jobservice {

    @Autowired
    private jobrepo jobrepo;

    public void addJobPost(JobPost jobPost) {
        System.out.println("Job post added");
        jobrepo.addJobinRepo(jobPost);
    }
}

