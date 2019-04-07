package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.WorkDAO;
import ua.lv.entity.Work;
import ua.lv.service.WorkService;

import java.util.List;

/**
 * Created by User on 07.04.2019.
 */
@Service
@Transactional
public class WorkServiceImpl implements WorkService {
    @Autowired
    WorkDAO workDAO;

    @Override
    public void addWork(Work work) {
        workDAO.save(work);
    }

    @Override
    public void deleteWork(int id) {
        workDAO.delete(id);
    }

    @Override
    public List<Work> workList() {
        return workDAO.findAll();
    }

    @Override
    public Work findOne(int id) {
        return workDAO.findOne(id);
    }
}
