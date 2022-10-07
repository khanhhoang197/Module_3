package com.khanhhoang.productsdiscount;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", value = "/display-discount")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("price"));
        float percent = Float.parseFloat(request.getParameter("percent"));

        double amount  = price * percent * 0.01;
        double discountPrice = price - amount;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<div>");
        writer.println("<h1>Product Discount Calculator</h1>");
        writer.println("<h4>Product Description: " + description + "</h4>");
        writer.println("<h4>List Price: $ " + price + "</h4>");
        writer.println("<h4>Discount Percent: " + percent + " (%)</h4>");
        writer.println("<h4>Discount Amount: $ " + amount + "</h4>");
        writer.println("<h4>Discount Price: $ " + discountPrice + "</h4>");
        writer.println("</div>");
        writer.println("</html>");
    }
}
