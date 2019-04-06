package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.UserDAO;
import ua.lv.entity.User;
import ua.lv.service.UserService;

import java.util.List;

/**
 * Created by User on 06.04.2019.
 */
@Service
@Transactional
public class UserserviceImpl implements UserService {
    @Autowired
    UserDAO userDAO;

    @Override
    public void save(User user) {
        userDAO.save(user);
    }

    @Override
    public void delete(int id) {
        userDAO.delete(id);
    }

    @Override
    public List<User> listUsers() {
        return userDAO.findAll();
    }

    @Override
    public User findOne(int id) {
        return userDAO.findOne(id);
    }

    @Override
    public User findByUserName(String username) {
        return userDAO.findUserByName(username);
    }
}
