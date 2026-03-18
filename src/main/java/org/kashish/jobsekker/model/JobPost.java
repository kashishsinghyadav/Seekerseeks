package org.kashish.jobsekker.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;


@Data // define as data
@NoArgsConstructor // no arg contrustor
@AllArgsConstructor // with all arguments
@Component
public class JobPost {



    private int postId;
    private String postProfile;
    private String postDesc;
    private int reqExperience;
    private List<String> postTechStack;




}
