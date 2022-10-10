package com.example.demo_include;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
        private static final long serialVersionUID = 1L;

        public HelloServlet() {
            super();
        }

        protected void doGet(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {

            System.out.println("FirstServlet.doGet");

            PrintWriter out = response.getWriter();
            out.println("<br>FirstServlet.doGet");

            RequestDispatcher rd1 = getServletContext().getRequestDispatcher(
                    "/IncludedServlet");
            rd1.include(request, response);
            rd1.include(request, response);

            RequestDispatcher rd2 = getServletContext().getRequestDispatcher(
                    "/ForwardedServlet");
            rd2.forward(request, response);

        }
    }