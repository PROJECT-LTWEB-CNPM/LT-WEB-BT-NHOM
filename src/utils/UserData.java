package utils;

import java.util.Arrays;
import java.util.List;

import models.User;

public class UserData {

	public List<User> getUsers() {
		User duy = new User("20110623", "Bùi Thanh Duy",
				"https://scontent.fsgn2-2.fna.fbcdn.net/v/t39.30808-1/296359368_182647704228368_3192998251568725578_n.jpg?stp=dst-jpg_p320x320&_nc_cat=103&ccb=1-7&_nc_sid=7206a8&_nc_ohc=U2MiGinI7CwAX81oIAD&tn=T2owRfLQST8u92TM&_nc_ht=scontent.fsgn2-2.fna&oh=00_AT_BbefvTbDTkt6pq25fSMEXK5WtexIALkYTz4bgy97uFQ&oe=6325D3F7",
				"", "https://www.facebook.com/profile.php?id=100074494187529");
		User anh = new User("20110205", "Vũ Hoàng Anh",
				"https://scontent.fsgn2-6.fna.fbcdn.net/v/t1.30497-1/143086968_2856368904622192_1959732218791162458_n.png?_nc_cat=1&ccb=1-7&_nc_sid=7206a8&_nc_ohc=ikppNKFs7AUAX8N1TVG&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT_KneBau17wDk-_weYygKvbMpCM6B1v7L6FKnDy3p23Wg&oe=634907F8",
				"", "https://www.facebook.com/anh.hoang.me");
		User truong = new User("20110756", "Phạm Nguyễn Nhựt Trường",
				"https://scontent.fsgn2-6.fna.fbcdn.net/v/t1.30497-1/143086968_2856368904622192_1959732218791162458_n.png?_nc_cat=1&ccb=1-7&_nc_sid=7206a8&_nc_ohc=ikppNKFs7AUAX8N1TVG&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT_KneBau17wDk-_weYygKvbMpCM6B1v7L6FKnDy3p23Wg&oe=634907F8",
				"", "https://www.facebook.com/truong.pn.12");
		User tuan = new User("20110743", "Đỗ Dương Thái Tuấn",
				"https://scontent.fsgn2-6.fna.fbcdn.net/v/t1.30497-1/143086968_2856368904622192_1959732218791162458_n.png?_nc_cat=1&ccb=1-7&_nc_sid=7206a8&_nc_ohc=ikppNKFs7AUAX8N1TVG&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT_KneBau17wDk-_weYygKvbMpCM6B1v7L6FKnDy3p23Wg&oe=634907F8",
				"", "https://www.facebook.com/doduongthaituan/");
		return Arrays.asList(new User[] { duy, tuan, truong, anh });
	}
}
