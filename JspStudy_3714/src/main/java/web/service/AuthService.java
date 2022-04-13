package web.service;

import java.util.Map;

import repository.user.User;

public interface AuthService {
	public Map<String, ?> signin(String username, String password);
	public boolean usernameChack(String username);
	public boolean signup(String email, String name, String Username, String password);
	public User getUser(String username);
}
