package ua.lv.service;

import ua.lv.entity.Modelka;

import java.util.List;

/**
 * Created by User on 07.04.2019.
 */
public interface ModelcaService {
    void addModelca(Modelka modelka);
    void deleteModelca(int id);
    Modelka findOne(int id);
    List<Modelka> findAll();
}
