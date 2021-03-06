package ua.ali_x.spring.dao;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ua.ali_x.spring.model.User;

import java.util.List;

public interface UserDao {

    User findByToken(String token);

    List<User> getAll();

    void create(User user);

    void update(User user);

    void delete(User user);

    void saveImage(@ModelAttribute("user") User user, @RequestParam("file") MultipartFile file);

    User getByUserName(String username);

}
