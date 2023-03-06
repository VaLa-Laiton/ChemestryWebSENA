package com.chemestryWeb.app.rest.Controller;

import com.chemestryWeb.app.rest.Model.Article;
import com.chemestryWeb.app.rest.Repository.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Este controlador maneja las solicitudes relacionadas con los artículos.
 */
@RestController
public class ArticleController {
    @Autowired
    private ArticleRepository articleRepository;

    /**
     * Retorna un saludo básico. "Hola Mundo!!!"
     */
    @GetMapping(value = "/")
    public String holaMundo(){
        return "Hola Mundo!!!";
    }

    /**
     * Retorna una lista de todos los artículos.
     */
    @GetMapping(value = "/article")
    public List<Article> getArticle(){
        return articleRepository.findAll();
    }

    /**
     * Guarda un artículo nuevo.
     */
    @PostMapping(value = "/write")
    public  String saveArticle(@RequestBody Article article){
        articleRepository.save(article);
        return "Save Article";
    }

    /**
     * Actualiza un artículo existente.
     */
    @PutMapping(value = "/update/{id}")
    public String updateArticle(@PathVariable long id, @RequestBody Article article){
        Article updatedArticle = articleRepository.findById(id).get();
        updatedArticle.setTitle(article.getTitle());
        updatedArticle.setContent(article.getContent());
        articleRepository.save(updatedArticle);
        return "Updated Article";
    }

    /**
     * Elimina un artículo existente.
     */
    @DeleteMapping(value = "/delete/{id}")
    public String deleteArticle(@PathVariable long id){
        Article deletedArticle = articleRepository.findById(id).get();
        articleRepository.delete(deletedArticle);
        return "Deleted Article";
    }

}
