package ua.lv.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.lv.entity.User;

/**
 * Created by User on 06.04.2019.
 */
public interface UserDAO extends JpaRepository<User, Integer> {
    @Query("from User u where u.username =:username")
    User findUserByName(@Param("username")String username);
}
