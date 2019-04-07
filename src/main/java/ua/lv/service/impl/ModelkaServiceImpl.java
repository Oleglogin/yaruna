package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.ModelcaDAO;
import ua.lv.entity.Modelka;
import ua.lv.service.ModelcaService;

import java.util.List;

/**
 * Created by User on 07.04.2019.
 */
@Service
@Transactional
public class ModelkaServiceImpl implements ModelcaService {
    @Autowired
    ModelcaDAO modelcaDAO;

    @Override
    public void addModelca(Modelka modelka) {
        modelcaDAO.save(modelka);
    }

    @Override
    public void deleteModelca(int id) {
        modelcaDAO.delete(id);
    }

    @Override
    public Modelka findOne(int id) {
        return modelcaDAO.findOne(id);
    }

    @Override
    public List<Modelka> findAll() {
        return modelcaDAO.findAll();
    }
}
