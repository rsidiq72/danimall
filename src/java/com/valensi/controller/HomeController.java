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
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/home")
public class HomeController {

    @Autowired
    ProductService ps;
    User user = new User("Ramdani", "asdfbnma");
    
    @RequestMapping()
    public String showAllProducts(HttpSession session, Model model) {
        session.setAttribute("user", user);
        model.addAttribute("user", user);
        model.addAttribute("msg", "Selamat datang di Danimall.com");
        List<Product> products = ps.findAll();
        model.addAttribute("products", products);
        return "home";
    }
}
