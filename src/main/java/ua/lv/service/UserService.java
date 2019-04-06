package ua.lv.service;

import ua.lv.entity.User;

import java.util.List;

/**
 * Created by User on 06.04.2019.
 */
public interface UserService {
    void save(User user);
    void delete(int id);
    List<User> listUsers();
    User findOne(int id);
    User findByUserName(String username);

}
