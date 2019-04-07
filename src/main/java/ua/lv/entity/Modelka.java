package ua.lv.entity;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Created by User on 07.04.2019.
 */
@Entity
public class Modelka {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String modelTitle;
    private String modelStyle;
    @Column(columnDefinition = "text")
    private String modelDescription;
    private String modelImg;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "modelka")
    private List<ElseImg> elseImgList;

    public Modelka() {
    }

    public Modelka(String modelTitle, String modelDescription, String modelImg) {
        this.modelTitle = modelTitle;
        this.modelDescription = modelDescription;
        this.modelImg = modelImg;
    }

    public Modelka(String modelTitle, String modelStyle, String modelDescription, String modelImg) {
        this.modelTitle = modelTitle;
        this.modelStyle = modelStyle;
        this.modelDescription = modelDescription;
        this.modelImg = modelImg;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getModelTitle() {
        return modelTitle;
    }

    public void setModelTitle(String modelTitle) {
        this.modelTitle = modelTitle;
    }

    public String getModelDescription() {
        return modelDescription;
    }

    public void setModelDescription(String modelDescription) {
        this.modelDescription = modelDescription;
    }

    public String getModelImg() {
        return modelImg;
    }

    public String getModelStyle() {
        return modelStyle;
    }

    public void setModelStyle(String modelStyle) {
        this.modelStyle = modelStyle;
    }

    public void setModelImg(MultipartFile multipartFile) {
        String path = System.getProperty("user.home") + File.separator + "Pictures\\";
        try {
            multipartFile.transferTo(new File(path + multipartFile.getOriginalFilename()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.modelImg = "\\workImg\\" + multipartFile.getOriginalFilename();
    }
}
