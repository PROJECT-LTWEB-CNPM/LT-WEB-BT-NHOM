package utils;

import java.util.Arrays;
import java.util.List;

import models.Lab;

public class LabData {
	public List<Lab> getLabs() {

		Lab lab1 = new Lab("bÃ i thá»±c hÃ nh 1", "Táº¡o website Ä‘Æ¡n giáº£n vá»›i mÃ´ hÃ¬nh MVC sá»­ dá»¥ng JSP vÃ  Servlet",
				"lab-1/join.jsp", "lab1.png");
		Lab lab2 = new Lab("bÃ i thá»±c hÃ nh 2", "Táº¡o website Ä‘Æ¡n giáº£n sá»­ dá»¥ng HTML5 vÃ  CSS3", "lab-2/index.jsp",
				"lab2.png");

		Lab lab5_1 = new Lab("bÃ i thá»±c hÃ nh 5.1", "How to develop with Servlet", "lab-3/lab3-1/index.jsp", "lab2.png");
		Lab lab5_2 = new Lab("bÃ i thá»±c hÃ nh 5.2", "How to develop with JSP", "lab-3/lab3-2/index.jsp", "lab2.png");
		Lab lab6_1 = new Lab("bÃ i thá»±c hÃ nh 6.1", "Modify the JPSs for the Email List Application",
				"lab-4/lab4-1/index.jsp", "lab2.png");
		Lab lab6_2 = new Lab("bÃ i thá»±c hÃ nh 6.2", "Create a new JSP", "lab-4/lab4-2/index.jsp", "lab2.png");
		Lab lab8 = new Lab("bÃ i thá»±c hÃ nh 8", "Modify the Email List Application", "lab-5/index.jsp", "lab2.png");
		Lab lab9_1 = new Lab("bÃ i thá»±c hÃ nh 9.1", "Use JSTL in the Download Application", "lab-6/lab6-1/index.jsp",
				"lab2.png");
		Lab lab9_2 = new Lab("bÃ i thá»±c hÃ nh 9.2", "Use JSTL in the Cart Application", "lab-6/lab6-2/index", "lab2.png");
		Lab lab7_1 = new Lab("bÃ i thá»±c hÃ nh 7.1", "Use a cookie", "lab-7/lab7-1/index.jsp", "lab2.png");
		Lab lab7_2 = new Lab("bÃ i thá»±c hÃ nh 7.2", "Use a sesstion attributes", "lab-7/lab7-2/index.jsp", "lab2.png");
		Lab lab7_3 = new Lab("bÃ i thá»±c hÃ nh 7.3", "Use URL rewriting instead of hidden fields",
				"lab-7/lab7-3/index.jsp", "lab2.png");
		Lab lab12_1 = new Lab("bÃ i thá»±c hÃ nh 12.1", "Implement connection pooling", "lab-8/lab8-1/index.jsp",
				"lab2.png");
		Lab lab12_2 = new Lab("bÃ i thá»±c hÃ nh 12.2", "Create a User Admin application", "lab-8/lab8-2/index.jsp",
				"lab2.png");
		Lab lab13_1 = new Lab("Bài tập 13.1","JPA connection", "lab-13/lab13-1/index.jsp", "lab5.png");
		Lab lab13_2 = new Lab("bÃ i thá»±c hÃ nh 13.2", "Update and Delete User", "lab-13/lab13-2/index.jsp",
				"lab2.png");
		Lab lab14_1 = new Lab("bÃ i thá»±c hÃ nh 14.1", "Send email from a Servlet", "lab-9/index.jsp",
				"lab2.png");
		Lab finalProject = new Lab("Dá»± Ã�n Cuá»‘i Ká»³", "PhÃ¡t triá»ƒn website kinh doanh Ä‘á»“ Ã¡o",
				"https://group5-ltweb-ecom.herokuapp.com/", "final.png");
		return Arrays.asList(new Lab[] { lab1, lab2, lab5_1, lab5_2, lab6_1, lab6_2, lab7_1, lab7_2, lab7_3, lab8,
				lab9_1, lab9_2, lab12_1, lab12_2, lab13_1, lab13_2, lab14_1, finalProject });
	}
}
