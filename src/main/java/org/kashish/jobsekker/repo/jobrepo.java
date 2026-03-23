package org.kashish.jobsekker.repo;

import org.kashish.jobsekker.model.JobPost;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@EnableJpaRepositories
public interface jobrepo extends JpaRepository<JobPost,Integer> {

    List<JobPost> findByPostProfileContainingOrPostDescContaining(String postProfile,String postDesc);


//    List<JobPost> jobPostList =  new ArrayList<>(Arrays.asList(
//            new JobPost(1,"Anuraag","Software Engineer",2, Arrays.asList("Java","Spring","Hibernate","MySQL")),
//            new JobPost(2,"kridha","Software Engineer",2, Arrays.asList("Java","Spring","MySQL")),
//            new JobPost(3,"Kashish","Software Engineer",2, Arrays.asList("Java","Spring","Hibernate","MySQL")),
//            new JobPost(2,"tarun","senior Software Engineer",2, Arrays.asList("Golang","Spring","Hibernate","MySQL"))
//
//            ));
//
//    public List<JobPost> getJobPostList() {
//        System.out.println("Job post list return");
//        return jobPostList;
//    }
//    public void addJobinRepo(JobPost jobPost) {
//        System.out.println("Job post added");
//        jobPostList.add(jobPost);
//    }
//
//    public JobPost getjobpost(int postid) {
//        for(JobPost jobpost:jobPostList) {
//            if(jobpost.getPostId()==postid) {
//                return jobpost;
//            }
//        }
//        return null;
//    }
//
//    public void updatejobpost(JobPost jobPost) {
//        for(JobPost jobs:jobPostList) {
//            if(jobs.getPostId()==jobPost.getPostId()) {
//                jobs.setPostId(jobPost.getPostId());
//                jobs.setPostProfile(jobPost.getPostProfile());
//                jobs.setPostDesc(jobPost.getPostDesc());
//                jobs.setReqExperience(jobPost.getReqExperience());
//                jobs.setPostTechStack(jobPost.getPostTechStack());
//            }
//        }
//    }
//
//    public void deletejobpost(int postid) {
//        try{
//            for(JobPost jobpost:jobPostList) {
//                if(jobpost.getPostId()==postid) {
//                    jobPostList.remove(jobpost);
//                }
//                System.out.println("Job post deleted");
//            }
//
//
//        }
//        catch (Exception e) {
//            System.out.println("No such post");
//        }
//    }


}
