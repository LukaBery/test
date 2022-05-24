package com.myspring.Onaju.board.review.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("reviewService")
@Transactional(propagation=Propagation.REQUIRED)
public class ReviewServiceImpl {

}
