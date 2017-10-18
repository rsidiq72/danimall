/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.dao;

import com.valensi.model.Product;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ProductService {

    @PersistenceContext
    private EntityManager em;

    public ProductService() {
    }

    public EntityManager getEm() {
        return em;
    }

    public void setEm(EntityManager em) {
        this.em = em;
    }

    public List<Product> findAll() {
        List<Product> products;
        products = this.em.createNamedQuery("Product.findAll").getResultList();
        return products;
    }

    public Product findById(Integer productid) {
        return em.find(Product.class, productid);
    }

}
