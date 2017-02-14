package com.nanda.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nanda.exception.ServiceException;
import com.nanda.model.Article;
import com.nanda.model.SeedCategory;
import com.nanda.model.User;
import com.nanda.service.ArticleService;

@Controller
@RequestMapping("/Article")
public class ArticleController {

	@GetMapping
	public String index(ModelMap modelMap){
		ArticleService articleService = new ArticleService();
		List<Article> list = articleService.list();
		modelMap.addAttribute("Article_LIST", list);
		return "articleList.jsp";
	}
	
	@GetMapping("/myArticles")
	public String myArticles(ModelMap modelMap,@RequestParam("id") int id) {
		ArticleService articleService = new ArticleService();
		List<Article> list=null;
		try {
			list = articleService.listMyArticle(id);
			System.out.println("nanda");
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		modelMap.addAttribute("Article_LIST", list);
		return "../myArticle.jsp";
	}
	
	
	@GetMapping("/save")
	public String save(@RequestParam("userId") int userId, @RequestParam("title") String title,
			@RequestParam("content") String content,@RequestParam("category") String category, ModelMap modelMap){
		ArticleService articleService = new ArticleService();
		Article article=new Article();
		User u=new User();
		SeedCategory sc=new SeedCategory();
		article.setTitle(title);
		u.setId(userId);
		article.setUserid(u);
		article.setContent(content);
		
		sc.setCategory(category);
		article.setSeedCategory(sc);
		try {
			articleService.publishArticle(article, sc);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		
		return"../Article";
	}
	
}
