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
public class Work {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String title;
    @Column(columnDefinition = "text")
    private String description;
    private String style;
    private String image;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "work")
    private List<ElseImg> elseImgList;



    public Work() {
    }

    public Work(String title, String discription, String style, String image) {
        this.title = title;
        this.description = discription;
        this.style = style;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String discription) {
        this.description = discription;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getImage() {
        return image;
    }

    public void setImage(MultipartFile multipartFile) {
        String path = System.getProperty("user.home") + File.separator + "Pictures\\";
        try {
            multipartFile.transferTo(new File(path + multipartFile.getOriginalFilename()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.image = "\\workImg\\" + multipartFile.getOriginalFilename();
    }

    public List<ElseImg> getElseImgList() {
        return elseImgList;
    }

    public void setElseImgList(List<ElseImg> elseImgList) {
        this.elseImgList = elseImgList;
    }
}
