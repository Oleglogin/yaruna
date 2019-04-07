package ua.lv.service;

import ua.lv.entity.ElseImg;

import java.util.List;

/**
 * Created by User on 07.04.2019.
 */
public interface ElseImgService {
    void addElseImg(ElseImg elseImg);
    void deleteElseImg(int id);
    List<ElseImg>elseImgList();
    ElseImg findOne(int id);
}
