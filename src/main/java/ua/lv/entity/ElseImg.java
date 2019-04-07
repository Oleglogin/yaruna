package ua.lv.entity;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.io.File;
import java.io.IOException;

/**
 * Created by User on 07.04.2019.
 */
@Entity
public class ElseImg {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String img;
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    private Work work;

    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    private Modelka modelka;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(MultipartFile multipartFile) {
        String path = System.getProperty("user.home") + File.separator + "Pictures\\";
        try {
            multipartFile.transferTo(new File(path + multipartFile.getOriginalFilename()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.img = "\\workImg\\" + multipartFile.getOriginalFilename();
    }

    public Work getWork() {
        return work;
    }

    public void setWork(Work work) {
        this.work = work;
    }

    public Modelka getModelka() {
        return modelka;
    }

    public void setModelka(Modelka modelka) {
        this.modelka = modelka;
    }
}
