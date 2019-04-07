package ua.lv.service;

import ua.lv.entity.Work;

import java.util.List;

/**
 * Created by User on 07.04.2019.
 */
public interface WorkService {
    void addWork(Work work);
    void deleteWork(int id);
    List<Work> workList();
    Work findOne(int id);
}
