package utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;

import models.User;

public class UserIO {

	public static boolean add(User user, String filepath) {
		try {
			File file = new File(filepath);
			PrintWriter out = new PrintWriter(new FileWriter(file, true));
			out.println(user.getEmail() + "|" + user.getFirstName() + "|" + user.getLastName());

			out.close();
			return true;
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
	}

	public static void addRecord(User user, String filename) throws IOException {
		File file = new File(filename);
		PrintWriter out = new PrintWriter(new FileWriter(file, true));
		out.println(user.getEmail() + "|" + user.getFirstName() + "|" + user.getLastName());
		out.close();
	}

	public static User getUser(String emailAddress, String filename) throws IOException {
		File file = new File(filename);
		BufferedReader in = new BufferedReader(new FileReader(file));
		User user = new User();
		String line = in.readLine();
		while (line != null) {
			StringTokenizer t = new StringTokenizer(line, "|");
			String email = t.nextToken();
			if (email.equalsIgnoreCase(emailAddress)) {
				String name = t.nextToken();
				String pwd = t.nextToken();
				user.setEmail(emailAddress);
				user.setName(name);
				user.setPwd(pwd);
			}
			line = in.readLine();
		}
		in.close();
		return user;
	}

	public static ArrayList<User> getUsers(String filename) throws IOException {
		ArrayList<User> users = new ArrayList<User>();
		BufferedReader in = new BufferedReader(new FileReader(filename));
		String line = in.readLine();
		while (line != null) {
			try {
				StringTokenizer t = new StringTokenizer(line, "|");
				String name = t.nextToken();
				String email = t.nextToken();
				String pwd = t.nextToken();
				User user = new User(name, email, pwd);
				System.out.println(name + " " + email + " " + pwd);
				users.add(user);
				line = in.readLine();
			} catch (NoSuchElementException e) {
				line = in.readLine();
			}
		}
		in.close();
		return users;
	}

	public static HashMap<String, User> getUsersMap(String filename) throws IOException {
		HashMap<String, User> users = new HashMap<String, User>();
		BufferedReader in = new BufferedReader(new FileReader(filename));
		String line = in.readLine();
		while (line != null) {
			try {
				StringTokenizer t = new StringTokenizer(line, "|");
				String emailAddress = t.nextToken();
				String firstName = t.nextToken();
				String lastName = t.nextToken();
				User user = new User(firstName, lastName, emailAddress);
				users.put(emailAddress, user);
				line = in.readLine();
			} catch (NoSuchElementException e) {
				line = in.readLine();
			}
		}
		in.close();
		return users;
	}
}
