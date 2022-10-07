package com.khanhhoang.show_customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Customer> customers = new ArrayList<>();
        customers.add(new Customer("Nguyễn Văn A", LocalDate.parse("2000-12-02"),"Huế","https://afamilycdn.com/150157425591193600/2022/5/4/thanh-meme-vua-khoc-vua-cuoi-gay-bao-nam-nao-nay-da-vao-lop-1-68195c-1651655554182262053422.jpg"));
        customers.add(new Customer("Nguyễn Văn B", LocalDate.parse("2000-12-02"),"Đà Nẵng","https://taimeme.com/public/upload/memes/2b595825ab5e51cd561caeb637711fd1chu-be-a-the-a-cuoi-rat-tuoi.jpg"));
        customers.add(new Customer("Nguyễn Văn C", LocalDate.parse("2000-12-02"),"Hà Nội","https://s.meta.com.vn/img/thumb.ashx/Data/image/2022/06/16/meme-goc-10.jpg"));
        customers.add(new Customer("Nguyễn Văn D", LocalDate.parse("2000-01-02"),"Sài Gòn","https://kenhtingamenet.ewr1.vultrobjects.com/2021/12/dien-mao-hien-tai-khong-nhan-ra-cua-huyen-thoai-meme-bieu-tuong-che-anh-1-thoi-va-nhung-rac-roi-cua-nhan-vat.jpg"));

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
        request.setAttribute("customers",customers);
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
