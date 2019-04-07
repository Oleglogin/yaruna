package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.ElseImgDAO;
import ua.lv.entity.ElseImg;
import ua.lv.service.ElseImgService;

import java.util.List;

/**
 * Created by User on 07.04.2019.
 */
@Service
@Transactional
public class ElseImgServiceImpl implements ElseImgService {
    @Autowired
    ElseImgDAO elseImgDAO;

    @Override
    public void addElseImg(ElseImg elseImg) {
        elseImgDAO.save(elseImg);
    }

    @Override
    public void deleteElseImg(int id) {
        elseImgDAO.delete(id);
    }

    @Override
    public List<ElseImg> elseImgList() {
        return elseImgDAO.findAll();
    }

    @Override
    public ElseImg findOne(int id) {
        return elseImgDAO.findOne(id);
    }
}
