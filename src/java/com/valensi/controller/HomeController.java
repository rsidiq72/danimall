/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.controller;

import com.valensi.dao.ProductService;
import com.valensi.model.Product;
import com.valensi.model.User;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/home")
public class HomeController {

    @Autowired
    ProductService ps;

    @RequestMapping()
    public String showAllProducts(HttpSession session, Model model) {
        model.addAttribute("msg", "Selamat datang di Danimall.com");
        User user = new User("Ramdani", "asdfbnma");
        List<Product> products = ps.findAll();
        model.addAttribute("products", products);
        session.setAttribute("user", user);
        return "home";
    }
    
        @RequestMapping(value = "/{productid}")
        public String showOneProduct(@PathVariable("productid") Integer productid, Model model, HttpSession session) {
        Product product = ps.findById(productid);
        session.setAttribute("product", product);
        model.addAttribute("product", product);
        return "detail";
        }
        
        @RequestMapping("/add")
        public String addToCart(HttpSession session, Model model){
            User user = (User) session.getAttribute("user");
            Product product = (Product) session.getAttribute("product");
            user.getCarts().add(product);
            model.addAttribute("msg", "berhasil ditambahkan ke keranjang");
            session.removeAttribute("product");
            return "addsuccess";
        }
        
        @RequestMapping("/cart")
        public String listCarts(HttpSession session, Model model){
            User user = (User) session.getAttribute("user");
            List <Product> barang = user.getCarts();
            model.addAttribute("barang", barang);
            return "cart";
        }    
}

