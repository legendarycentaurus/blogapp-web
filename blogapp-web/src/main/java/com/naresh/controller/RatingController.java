package com.naresh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nanda.exception.ServiceException;
import com.nanda.model.Article;
import com.nanda.model.Rating;
import com.nanda.model.User;
import com.nanda.service.RatingService;



@Controller
@RequestMapping("/ratings")
public class RatingController {
	@GetMapping("/insertRatings")
	public String delete(@RequestParam("articleId") int articleId,@RequestParam("userId") int userId,@RequestParam("ratings") int ratings,ModelMap modelMap) {
		Rating rating=new Rating();
		RatingService ratingService=new RatingService();
		Article a=new Article();
		a.setId(articleId);
		rating.setArticleId(a);
		User u=new User();
		u.setId(userId);
		rating.setUserId(u);
		rating.setRating(ratings);
		try {
			ratingService.save(rating);
		} catch (ServiceException e) {
			modelMap.addAttribute("Message", "Unable to Insert");
			return "../comments.jsp";
		}
		modelMap.addAttribute("Message", "successfully Inserted");
		return "../Ratings.jsp";
	}

}

