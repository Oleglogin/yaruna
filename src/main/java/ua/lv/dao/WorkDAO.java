package ua.lv.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lv.entity.Work;

/**
 * Created by User on 07.04.2019.
 */
public interface WorkDAO extends JpaRepository<Work, Integer> {
    
}
