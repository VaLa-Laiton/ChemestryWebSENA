package com.chemestryWeb.app.rest.Repository;

import com.chemestryWeb.app.rest.Model.Article;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Esta interfaz define la funcionalidad del repositorio de artículos.
 */
public interface ArticleRepository extends JpaRepository <Article, Long> {
}
