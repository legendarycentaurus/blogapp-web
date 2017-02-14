package com.naresh.controller;

import java.util.List;

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
	@GetMapping
	public String list(@RequestParam("userId") int userId,ModelMap modelMap){
		RatingService ratingService=new RatingService();
		List<Rating> r=null;
		try {
			r = ratingService.list(userId);
		} catch (ServiceException e) {
			modelMap.addAttribute("ratingList",e.toString());
		}
		modelMap.addAttribute("ratingList", r);
		return "Ratings.jsp";
		
	}
	
	@GetMapping("/insertRatings")
	public String save(@RequestParam("articleId") int articleId,@RequestParam("userId") int userId,@RequestParam("ratings") int ratings,ModelMap modelMap) {
		Rating rating=new Rating();
		RatingService ratingService=new RatingService();
		Article a=new Article();
		a.setId(articleId);
		rating.setArticleId(a);
		User u=new User();
		u.setId(userId);
		rating.setUserId(u);
		rating.setRating(ratings);
		System.out.println(rating);
		try {
			ratingService.save(rating);
		} catch (ServiceException e) {
			modelMap.addAttribute("Message", "Unable to Insert");
			return "../comments.jsp";
		}
		modelMap.addAttribute("Message", "successfully Inserted");
		return "../Ratings.jsp";
	}

	@GetMapping("/updateRatings")
	public String update(@RequestParam("ratings") int ratings,@RequestParam("id") int id,ModelMap modelMap)
	{
		Rating rating=new Rating();
		RatingService ratingService=new RatingService();
		rating.setId(id);
		rating.setRating(ratings);
		try {
			ratingService.update(rating);
		} catch (ServiceException e) {
			modelMap.addAttribute("Message", "Unable to Insert");
			return "../ratings";
		}
		modelMap.addAttribute("Message", "successfully updated");
		return "../Ratings.jsp";
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam("id") int id,ModelMap modelMap)
	{
		Rating rating=new Rating();
		RatingService ratingService=new RatingService();
		rating.setId(id);
		try {
			ratingService.delete(rating);
		} catch (ServiceException e) {
			modelMap.addAttribute("Message", "Unable to Delete");
			return "../ratings";
		}
		modelMap.addAttribute("Message", "successfully Deleted");
		return "../Ratings.jsp";
	}
}

