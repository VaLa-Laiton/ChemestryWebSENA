package com.chemestryWeb.app.rest.Model;

import jakarta.persistence.*;

/**
 * Esta clase representa un artículo.
 */
@Entity
@Table(name = "articles")
public class Article {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column
    private String title;
    @Column
    private String content;

    /**
     * Retorna el id del artículo.
     */
    public long getId(){
        return id;
    }
    /**
     * Establece el id del artículo.
     */
    public void setId(){
        this.id = id;
    }

    /**
     * Retorna el título del artículo.
     */
    public String getTitle(){
        return title;
    }
    /**
     * Establece el título del artículo.
     */
    public void setTitle(String title){
        this.title = title;
    }

    /**
     * Retorna el contenido del artículo.
     */
    public String getContent(){
        return content;
    }
    /**
     * Establece el contenido del artículo.
     */
    public void setContent(String content){
        this.content = content;
    }
}
